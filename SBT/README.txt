Use the following steps to test SBT:
Ref: https://www.scala-sbt.org/1.x/docs/Hello.html

From a login node:
$ srun -p testing -A testing --time=01:00:00 -n 1 --pty bash
$ mkdir test
$ cd test
$ sbt new sbt/scala-seed.g8
Picked up JAVA_TOOL_OPTIONS: -Xms2G -Xmx2G
[info] welcome to sbt 1.5.3 (Red Hat, Inc. Java 1.8.0_292)
[info] set current project to new (in build file:/tmp/sbt_853f382f/new/)

A minimal Scala project.

name [Scala Seed Project]: hello

Template applied in /work/ftk939/opt/sbt/test/./hello

$ ls -laF
total 12
drwxrwx--- 3 ftk939 arcadmins 4096 Oct 28 21:44 ./
drwxrwx--- 7 ftk939 arcadmins 4096 Oct 28 21:43 ../
drwxrwx--- 4 ftk939 arcadmins 4096 Oct 28 21:44 hello/
$ cd hello
$ sbt
Picked up JAVA_TOOL_OPTIONS: -Xms2G -Xmx2G
[info] Loading project definition from /work/ftk939/opt/sbt/test/hello/project
[info] Updating ProjectRef(uri("file:/work/ftk939/opt/sbt/test/hello/project/"), "hello-build")...
[info] Done updating.
[info] Compiling 1 Scala source to /work/ftk939/opt/sbt/test/hello/project/target/scala-2.12/sbt-1.0/classes ...
[info] Done compiling.
[info] Loading settings for project root from build.sbt ...
[info] Set current project to hello (in build file:/work/ftk939/opt/sbt/test/hello/)
[info] sbt server started at local:///home/ftk939/.sbt/1.0/server/0a4162fa83a992116087/sock
sbt:hello> run
[info] Updating ...
[info] Done updating.
[info] Compiling 1 Scala source to /work/ftk939/opt/sbt/test/hello/target/scala-2.12/classes ...
[info] Done compiling.
[info] Packaging /work/ftk939/opt/sbt/test/hello/target/scala-2.12/hello_2.12-0.1.0-SNAPSHOT.jar ...
[info] Done packaging.
[info] Running example.Hello
hello
[success] Total time: 3 s, completed Oct 28, 2021 9:45:01 PM
sbt:hello> exit
[info] shutting down server
$

That's it!
