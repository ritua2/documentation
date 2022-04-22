import tensorflow_datasets as tfds
import tensorflow as tf
tfds.disable_progress_bar()
import os

#os.environ["CUDA_VISIBLE_DEVICES"]='0,1'
os.environ["CUDA_VISIBLE_DEVICES"]='0'
datasets, info = tfds.load(name='mnist', with_info=True, as_supervised=True)

mnist_train, mnist_test = datasets['train'], datasets['test']

# Ues the strategy for data parallelization across multi-gpu 
strategy = tf.distribute.MirroredStrategy()

num_train_examples = info.splits['train'].num_examples
num_test_examples = info.splits['test'].num_examples

BUFFER_SIZE = 10000

print(f'strategy.num_replicas_in_sync: {strategy.num_replicas_in_sync}')

BATCH_SIZE_PER_REPLICA = 64
BATCH_SIZE = BATCH_SIZE_PER_REPLICA * strategy.num_replicas_in_sync

def scale(image, label):
 image = tf.cast(image, tf.float32)
 image /= 255
 return image, label

#Apply this function to the training and test data, shuffle the training data, and batch it for training. Notice we are also keeping an in-memory cache of the training data to improve performance.

train_dataset = mnist_train.map(scale).cache().shuffle(BUFFER_SIZE).batch(BATCH_SIZE)
eval_dataset = mnist_test.map(scale).batch(BATCH_SIZE)

#Within the distributed strategy scope, the data in a batch is evenly distrinuted across the GPUs.
with strategy.scope():
 model = tf.keras.Sequential([
     tf.keras.layers.Conv2D(32, 3, activation='relu', input_shape=(28, 28, 1)),
     tf.keras.layers.MaxPooling2D(),
     tf.keras.layers.Flatten(),
     tf.keras.layers.Dense(64, activation='relu'),
     tf.keras.layers.Dense(256, activation='relu'),
     tf.keras.layers.Dense(256, activation='relu'),
     tf.keras.layers.Dense(10)
 ])

 model.compile(loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
               optimizer=tf.keras.optimizers.Adam(),
               metrics=['accuracy'])

model.fit(train_dataset, epochs=10)

eval_loss, eval_acc = model.evaluate(eval_dataset)
print('Eval loss: {}, Eval Accuracy: {}'.format(eval_loss, eval_acc))
