import tensorflow as tf
from tensorflow.keras.callbacks import ModelCheckpoint
import os.path
from os import path

mnist = tf.keras.datasets.mnist

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

filename = "mymodel.h5"

# check if checkpoint file exists. if does, load the model and skip building the model
if (path.isfile(filename)):
    print("Resuming")
    model = tf.keras.models.load_model(filename)
else:
    print('Build the model from scratch')

    model = tf.keras.models.Sequential([
        tf.keras.layers.Flatten(input_shape=(28, 28)),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dropout(0.2),
        tf.keras.layers.Dense(10, activation='softmax')
    ])

    model.compile(optimizer='adam',
                  loss='sparse_categorical_crossentropy',
                  metrics=['accuracy'])

checkpoint = ModelCheckpoint(filename, monitor='loss', verbose=1, save_best_only=True, mode='min')

model.fit(x_train, y_train, epochs=5, batch_size = 1000, validation_split = 0.1, callbacks=[checkpoint])

model.evaluate(x_test, y_test, verbose=2)
