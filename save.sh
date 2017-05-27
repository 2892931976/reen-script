#!/usr/bin/env bash

redisBinPath="/Users/lrkin/Downloads/redis-3.2.8/src"
backupFilePath="/Users/lrkin/Desktop/GitHub/reen-file-backup"
time=`date +%s`

#1.执行SAVE命令
${redisBinPath}/redis-cli -p 6379 -h 127.0.0.1 SAVE
#2.得到SAVE后的文件路径
rdbPath=`${redisBinPath}/redis-cli -p 6379 -h 127.0.0.1 CONFIG GET dir`
#3.保存得到的rdb文件
currentTime=${time}
mkdir ${backupFilePath}/${currentTime}
realRdbPath=/${rdbPath#*/}
cp ${realRdbPath}/dump.rdb ${backupFilePath}/${currentTime}
#4.上传到GitHub
cd ${backupFilePath}
git add .
git commit -m "update"
git push -u origin master
