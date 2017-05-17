#!/bin/bash

tar -zcf apkinfo.tar.gz src

shasum -a 256 apkinfo.tar.gz | cut -d " " -f1

echo $?

rm ~/Library/Caches/Homebrew/apkinfo-1.0.tar.gz 

git a && git cm "update" && git push

brew update

brew install apkinfo


#/usr/local/Cellar/apkinfo/1.0/bin/
