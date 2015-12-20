#!/bin/bash
$HOME=${2:-"~"}
mvn -Dversion="$1" -Dmaven.repo.local="$HOME/.m2/repository clean"
