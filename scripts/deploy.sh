#!/bin/bash

pwd
./gradlew build
nohup java -jar build/libs/toy-0.0.1-SNAPSHOT.jar &