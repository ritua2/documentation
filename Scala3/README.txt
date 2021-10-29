Use the following steps to test Scala3:
Ref: https://docs.scala-lang.org/scala3/book/taste-hello-world.html

Either download the hello-world.scala file or create it locally.

From a login node:
$ srun -p testing -A testing --time=01:00:00 -n 1 --pty bash
$ module load scala3/3.0.0
$ scalac hello-world.scala

Compiling should generate these files:
$ ls -l
hello.class
hello$minusworld$package.class
hello$minusworld$package$.class
hello$minusworld$package.tasty
hello.tasty

$ scala hello
Hello, world!

That's it!
