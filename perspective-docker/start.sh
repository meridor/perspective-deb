#!/bin/bash
GC_OPTS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
MEMORY_OPTS="-Xmx256m"

JAVA_ARGS="$GC_OPTS $MEMORY_OPTS -Xbootclasspath/a:/etc/perspective/docker -Djava.net.preferIPv6Addresses=true"

java $JAVA_ARGS -jar /usr/share/perspective/perspective-docker/perspective-docker.jar >> /var/log/perspective/perspective-docker.log 2>&1
