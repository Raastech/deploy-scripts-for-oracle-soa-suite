#!/bin/bash

# Modify this value to be appropriate to your environment
export ORACLE_HOME=/u01/app/oracle
export ANT_HOME=$ORACLE_HOME/middleware/modules/org.apache.ant_1.7.1
export PATH=$ANT_HOME/bin:$PATH
export CURRENT_FOLDER=`pwd`

# Use this for Sun JDK
export JAVA_HOME=$ORACLE_HOME/jdk1.6.0_21
export ANT_OPTS="-Xmx1536M -Xms1536M -XX:MaxNewSize=800M -XX:NewSize=800M -XX:SurvivorRatio=12 -XX:PermSize=1024M -XX:MaxPermSize=2048M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC"

# Use this for JRockit
export JAVA_HOME=$ORACLE_HOME/jrockit-jdk1.6.0_20
export ANT_OPTS=""

ant -f build.soa.xml help -Dtargetenv=dev
