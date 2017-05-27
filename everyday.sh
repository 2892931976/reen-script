#!/usr/bin/env bash

/Users/lrkin/Desktop/save.sh

cd /Users/lrkin/Desktop/GitHub/reen-blog-backup
git add .
git commit -m "update"
git push -u origin master

cd /Users/lrkin/Desktop/GitHub/reen-nginx-lua
git add .
git commit -m "update"
git push -u origin master

cd /Users/lrkin/Desktop/GitHub/reen-blog
git add .
git commit -m "update"
git push -u origin master

