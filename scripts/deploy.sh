#!/bin/bash

git pull origin main
./gradlew build

cd build/libs
nohup java -jar toy-0.0.1-SNAPSHOT.jar &