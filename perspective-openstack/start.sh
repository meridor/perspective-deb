#!/bin/bash
GC_OPTS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
MEMORY_OPTS="-Xmx256m"

JAVA_ARGS="$GC_OPTS $MEMORY_OPTS -Xbootclasspath/a:/etc/perspective/openstack -Djava.net.preferIPv6Addresses=true"

java $JAVA_ARGS -jar /usr/share/perspective/perspective-openstack/perspective-openstack.jar >> /var/log/perspective/perspective-openstack.log 2>&1
