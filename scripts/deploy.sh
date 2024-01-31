#!/bin/bash

#source ~/.zshrc

./gradlew build || exit 1

ps -ef | grep "toy-0.0.1-SNAPSHOT.jar" | grep -v grep | awk '{print $2}' | xargs kill -9 2> /dev/null

if [ $? -eq 0 ];then
    echo "my-application Stop Success"
else
    echo "my-application Not Running"
fi

echo "my-application Restart!"
echo $1

nohup java -jar build/libs/toy-0.0.1-SNAPSHOT.jar &