#!/bin/bash

export CLASSPATH="/etc/myvd-config:/usr/local/myvd/resources:/usr/local/myvd/classes:/usr/local/myvd/libs/*"
java -classpath $CLASSPATH $JAVA_OPTS com.tremolosecurity.openunison.myvd.MyVDServer /etc/myvd-config/myvd.yaml