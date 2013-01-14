#!/bin/bash

# works on both linux and git bash
ROOT=`dirname $0`
JOB_CMD="java -jar $ROOT/install/jenkins-cli.jar -s http://localhost:8080/ get-job"
$JOB_CMD cucumber_test > $ROOT/cucumber_test.xml

