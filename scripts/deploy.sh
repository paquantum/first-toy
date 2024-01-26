#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
source ~/.zshrc
CURRENT_PID=$(pgrep -f toy-0.0.1-SNAPSHOT.jar)
sudo kill -9 $CURRENT_PID
./gradlew build
nohup java -jar build/libs/toy-0.0.1-SNAPSHOT.jar &
exit