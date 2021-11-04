Java is installed locally on each login and compute node.

To verify the installation:

$ java -version
Picked up JAVA_TOOL_OPTIONS: -Xms2G -Xmx2G
openjdk version "1.8.0_292"
OpenJDK Runtime Environment (build 1.8.0_292-b10)
OpenJDK 64-Bit Server VM (build 25.292-b10, mixed mode)

$ rpm -qa | grep -i java | sort
java-1.8.0-openjdk-1.8.0.292.b10-1.el7_9.x86_64
java-1.8.0-openjdk-devel-1.8.0.292.b10-1.el7_9.x86_64
java-1.8.0-openjdk-headless-1.8.0.292.b10-1.el7_9.x86_64
javapackages-tools-3.4.1-11.el7.noarch
python-javapackages-3.4.1-11.el7.noarch
tzdata-java-2021a-1.el7.noarch
