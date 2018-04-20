#!/bin/bash

export JAVA_HOME=/home/appadmin/jdk1.8.0_91


WEB_PORT="$1"
    echo "web-port:$WEB_PORT"

WEB_NAME="$2"

#default value
if [ ! -n "$2" ]; then 
     WEB_HOME="/home/appadmin/$WEB_NAME"
else
     WEB_HOME="/home/appadmin/$WEB_NAME"
fi
     echo "web-home:$WEB_HOME"

if [ ! -n "$3" ]; then 
     PROJECT_NAME="ROOT"
else
     PROJECT_NAME="$3"
fi
     echo "project-name:$PROJECT_NAME"
 
tomcat_pid=`/usr/sbin/lsof -n -P -t -i :$WEB_PORT`
[ -n "$tomcat_pid" ] && kill -9 $tomcat_pid
 
echo "$PROJECT_NAME_$WEB_PORT was stoped"

sleep 3

rm -rf "$WEB_HOME/$PROJECT_NAME.jar"

cd target/
cp "$PROJECT_NAME.jar" "$WEB_HOME/$PROJECT_NAME.jar"

cd "$WEB_HOME/"
chown appadmin:appadmin "$PROJECT_NAME.jar"
chmod 755 "$PROJECT_NAME.jar"

java -Xms128m -Xmx256m -jar $PROJECT_NAME.jar &

echo "$PROJECT_NAME_$WEB_PORT is starting...,please waiting for abount 15s"

sleep 15



