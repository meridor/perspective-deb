#!/bin/bash
GC_OPTS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
MEMORY_OPTS="-Xmx256m"

JAVA_ARGS="$GC_OPTS $MEMORY_OPTS -Xbootclasspath/a:/etc/perspective/ -Djava.net.preferIPv6Addresses=true"

java $JAVA_ARGS -jar /usr/share/perspective/perspective-digital-ocean/perspective-digital-ocean.jar >> /var/log/perspective/perspective-digital-ocean.log 2>&1
