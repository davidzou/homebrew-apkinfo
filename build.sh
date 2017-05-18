#!/bin/bash
#rm tarball/apkinfo.zip
#zip -qj tarball/apkinfo.zip src/apkinfo LICENSE README.md CHANGELOG.md
#zip tarball/apkinfo.zip src/tools
#unzip -v tarball/apkinfo.zip
#SHA256=`shasum -a 256 tarball/apkinfo.zip | cut -d " " -f1`

rm tarball/apkinfo.tar.gz
tar -zcf tarball/apkinfo.tar.gz -C src tools/ apkinfo
tar tf tarball/apkinfo.tar.gz
SHA256=`shasum -a 256 tarball/apkinfo.tar.gz | cut -d " " -f1`

echo "========================================================="
echo ${SHA256}
echo "========================================================="

sed -ig "s/sha256.*/sha256 '${SHA256}'/g" Formula/apkinfo.rb
rm Formula/apkinfo.rbg

cat Formula/apkinfo.rb

#rm ~/Library/Caches/Homebrew/apkinfo*
#
#git a && git cm "update" && git push
#
#brew update
#
#brew install apkinfo


#/usr/local/Cellar/apkinfo/1.0/bin/
