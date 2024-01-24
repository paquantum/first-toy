#!/bin/bash

git pull origin main
./gradlew build

CURRENT_PID=$(pgrep -f toy-0.0.1-SNAPSHOT.jar)
sudo kill -9 $CURRENT_PID

cd build/libs
nohup java -jar toy-0.0.1-SNAPSHOT.jar &