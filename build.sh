#!/bin/bash

VERSION=0.0.1
BUILD_HOME=build/apkinfo/${VERSION}/
FILE_NAME=apkinfo.tar

if [ -d build ] ; then
    rm -rf build
fi

# 创建构建目录build，拷贝打包文件
mkdir -p ${BUILD_HOME}
cp -r src/tools ${BUILD_HOME}
cp src/apkinfo.sh ${BUILD_HOME}
cp src/apkinfo.1 ${BUILD_HOME}

# 替换文件中的版本号
sed -ig "s/APKINFO_VERSION=.*/APKINFO_VERSION=\"${VERSION}\"/g" ${BUILD_HOME}/apkinfo.sh
sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/apkinfo.sh
sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/apkinfo_options_help.sh
sed -ig "s/Version :.*/Version :       ${VERSION}/g" ${BUILD_HOME}/tools/apkinfo_options_help.txt
sed -ig "s/\.TH man 1 \".*/\.TH man 1 \"10 May 2017\" \"${VERSION}\" \"apkinfo man page\"/g" ${BUILD_HOME}/apkinfo.1

rm ${BUILD_HOME}/apkinfo.shg
rm ${BUILD_HOME}/apkinfo.1g
rm ${BUILD_HOME}/tools/apkinfo_options_help.txtg
rm ${BUILD_HOME}/tools/apkinfo_options_help.shg

# 压缩资源包
rm tarball/${FILE_NAME}
tar -cvf tarball/${FILE_NAME} -C ${BUILD_HOME} apkinfo.sh apkinfo.1 tools/ i18n/
tar -zvtf tarball/${FILE_NAME}

# 生成校验码
SHA256=`shasum -a 256 tarball/${FILE_NAME} | cut -d " " -f1`
echo "========================================================="
echo ${SHA256}
echo "========================================================="

# 替换校验码
sed -ig "s/sha256.*/sha256 '${SHA256}'/g" Formula/apkinfo.rb
sed -ig "s/version.*/version '${VERSION}'/g" Formula/apkinfo.rb
rm Formula/apkinfo.rbg

#cat Formula/apkinfo.rb

#rm ~/Library/Caches/Homebrew/apkinfo*
#
#git a && git cm "update" && git push
#
#brew update
#
#brew install apkinfo