#!/bin/bash
GC_OPTS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
MEMORY_OPTS="-Xmx1024m"

JAVA_ARGS="$GC_OPTS $MEMORY_OPTS -Xbootclasspath/a:/etc/perspective/storage -Djava.net.preferIPv6Addresses=true"

java $JAVA_ARGS -jar /usr/share/perspective/perspective-storage/perspective-storage.jar >> /var/log/perspective/perspective-storage.log 2>&1
