#!/bin/bash
VERSION=$1
mvn -Dversion="$VERSION" -DskipTests=true clean package
mv perspective-rest/target/lib/perspective-rest-${VERSION}.jar perspective-rest/target/perspective-rest.jar
mv perspective-storage/target/lib/perspective-storage-${VERSION}.jar perspective-storage/target/perspective-storage.jar
mv perspective-openstack/target/lib/perspective-openstack-${VERSION}.jar perspective-openstack/target/perspective-openstack.jar
mv perspective-docker/target/lib/perspective-docker-${VERSION}.jar perspective-docker/target/perspective-docker.jar
mv perspective-shell/target/lib/perspective-shell-${VERSION}.jar perspective-shell/target/perspective-shell.jar
