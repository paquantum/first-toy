#!/bin/bash

git pull origin main
./gradlew build

nohup java -jar build/libs/toy-0.0.1-SNAPSHOT.jar &