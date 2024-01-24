#!/bin/bash

pwd
ls -al

./gradlew build || exit 1
nohup java -jar build/libs/toy-0.0.1-SNAPSHOT.jar &