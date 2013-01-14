#!/bin/bash

ROOT=`dirname $0`
JOB_CMD="java -jar $ROOT/../install/jenkins-cli.jar -s http://localhost:8080/ create-job"
$JOB_CMD cucumber_test < $ROOT/cucumber_test.xml
