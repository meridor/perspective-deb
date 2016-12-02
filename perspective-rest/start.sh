#!/bin/bash
GC_OPTS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
MEMORY_OPTS="-Xms256m -Xmx1024m"

JAVA_ARGS="$GC_OPTS $MEMORY_OPTS -Xbootclasspath/a:/etc/perspective/rest -Djava.net.preferIPv6Addresses=true"

java $JAVA_ARGS -jar /usr/share/perspective/perspective-rest/perspective-rest.jar >> /var/log/perspective/perspective-rest.log 2>&1
