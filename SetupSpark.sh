#!/bin/bash
###########

# Install Python
# PySpark will require Python 2.7 as python

sudo apt install python-minimal

#Spark depends on Java

sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo update-alternatives --config java

echo "JAVA_HOME="/usr/lib/jvm/java-8-oracle"" | sudo tee -a /etc/environment

source /etc/environment
echo $JAVA_HOME

# Install SBT
# SBT is a build tool for Java and Scala

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

# Install Scala
# Spark depends on Scala

sudo apt-get update
sudo apt-get install scala

# Install Apache Spark
# Install the latest distribution of Spark on your system

cd ~
curl http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz | tar xvz -C .

mv spark-2.1.0-bin-hadoop2.7 spark
sudo mv spark/ /usr/lib/

cd /usr/lib/spark/conf/
cp spark-env.sh.template spark-env.sh

echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" | sudo tee -a /usr/lib/spark/conf/spark-env.sh
echo "SPARK_WORKER_MEMORY=4g" | sudo tee -a /usr/lib/spark/conf/spark-env.sh

echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a  /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" | sudo tee -a  /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 1" | sudo tee -a  /etc/sysctl.conf

echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" | sudo tee -a ~/.bashrc
echo "export SBT_HOME=/usr/share/sbt-launcher-packaging/bin/sbt-launch.jar" | sudo tee -a ~/.bashrc
echo "export SPARK_HOME=/usr/lib/spark" | sudo tee -a ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" | sudo tee -a ~/.bashrc
echo "export PATH=\$PATH:\$SBT_HOME/bin:\$SPARK_HOME/bin:\$SPARK_HOME/sbin" | sudo tee -a ~/.bashrc
echo ""
echo "Reboot your instance."
