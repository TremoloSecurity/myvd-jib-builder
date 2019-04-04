#!/bin/bash



cp /etc/myvd/myvd.p12 /tmp/myvd.p12

. /etc/myvd/myvd.env

keytool -importkeystore -srckeystore /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/cacerts -srcstoretype JKS -srcstorepass changeit -deststoretype PKCS12 -destkeystore /tmp/myvd.p12 -deststorepass $MYVD_TLS_KEY_PASSWORD


export CLASSPATH="/etc/myvd-config:/usr/local/myvd/resources:/usr/local/myvd/classes:/usr/local/myvd/libs/*"
java -classpath $CLASSPATH $JAVA_OPTS -Djavax.net.ssl.trustStore=/tmp/myvd.p12 -Djavax.net.ssl.trustStoreType=PKCS12 -Djavax.net.ssl.trustStorePassword=$MYVD_TLS_KEY_PASSWORD com.tremolosecurity.openunison.myvd.MyVDServer /etc/myvd-config/myvd.yaml