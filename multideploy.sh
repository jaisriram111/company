#!/bin/bash
$i=1
for i in `cat ip.txt`
 do
   echo "Deploying war file in to $i QA server"
    sleep 3
     sshpass -p "1234" scp target/companybank.war priya@$i:/home/priya/soft/apache-tomcat-8.5.32/webapps
#echo ip:$i
   echo "Starting tomcat server  in $i QA server"
     sshpass -p "1234" ssh priya@$i "JAVA_HOME=/home/priya/soft/jdk1.8.0_171" "/home/priya/soft/apache-tomcat-8.5.32/bin/./startup.sh"
 done
echo "Deployement success"
