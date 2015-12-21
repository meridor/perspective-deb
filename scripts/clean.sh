#!/bin/bash
VERSION=$1
HOME=${2:-"~"}
mvn -Dversion="$VERSION" clean
