#!/bin/bash

# 当前版本号
VERSION=0.0.5
# 构建目录（build）
BUILD_HOME=build/apkinfo/${VERSION}/
# 发布文件包名
FILE_NAME=apkinfo.tar

## 删除已有的编译缓存目录
#if [ -d build ] ; then
#    rm -rf build
#fi
#
## 创建构建目录build，拷贝打包文件
#mkdir -p ${BUILD_HOME}
#cp -r src/tools ${BUILD_HOME}
#cp src/apkinfo.sh ${BUILD_HOME}
#cp src/apkinfo.1 ${BUILD_HOME}
#
## 替换文件中的版本号
#sed -ig "s/APKINFO_VERSION=.*/APKINFO_VERSION=\"${VERSION}\"/g" ${BUILD_HOME}/apkinfo.sh
#sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/apkinfo.sh
#sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/tools/apkinfo_options_help.sh
#sed -ig "s/Version :.*/Version :       ${VERSION}/g" ${BUILD_HOME}/tools/apkinfo_options_help.txt
#sed -ig "s/\.TH man 8 \".*/\.TH man 8 \"10 May 2017\" \"${VERSION}\" \"apkinfo man page\"/g" ${BUILD_HOME}/apkinfo.1
#sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/tools/table.sh
#sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/tools/logger.sh
#sed -ig "s/#  version.*/#  version    : ${VERSION}/g" ${BUILD_HOME}/tools/apkinfo_i18n.sh
#
## 删除替换的临时文件
#rm ${BUILD_HOME}/apkinfo.shg
#rm ${BUILD_HOME}/apkinfo.1g
#rm ${BUILD_HOME}/tools/apkinfo_options_help.txtg
#rm ${BUILD_HOME}/tools/apkinfo_options_help.shg
#rm ${BUILD_HOME}/tools/table.shg
#rm ${BUILD_HOME}/tools/logger.shg
#rm ${BUILD_HOME}/tools/apkinfo_i18n.shg
#
## 压缩资源包
#rm tarball/${FILE_NAME}
#tar -cvf tarball/${FILE_NAME} -C ${BUILD_HOME} apkinfo.sh apkinfo.1 tools/ i18n/
#tar -zvtf tarball/${FILE_NAME}

## 打包编译
gradle --no-daemon -Pbuild.version=${VERSION} clean build
## 发布
gradle --no-daemon -Pbuild.version=${VERSION} distTar

# 发布包名
TAR_NAME=apkinfo-command-v${VERSION}.tar

# 生成校验码
SHA256=`shasum -a 256 tarball/apkinfo_${VERSION}/${TAR_NAME} | cut -d " " -f1`
echo "========================================================="
echo ${SHA256}
echo "========================================================="

# 替换校验码
sed -ig "s/sha256.*/sha256 '${SHA256}'/g" Formula/apkinfo.rb
sed -ig "s/version.*/version '${VERSION}'/g" Formula/apkinfo.rb
sed -ig "s/url.*/url 'https:\/\/github.com\/davidzou\/homebrew-apkinfo\/blob\/master\/tarball\/apkinfo_${VERSION}\/${TAR_NAME}?raw=true'/g" Formula/apkinfo.rb
rm Formula/apkinfo.rbg

#cat Formula/apkinfo.rb

# 安装文件存放目录(压缩吧)
# rm ~/Library/Caches/Homebrew/apkinfo-0.0.3.tar
# 源码下载地址
# rm -rf /usr/local/Homebrew/Library/Taps/davidzou/
# 压缩文件解压后目录
# rm -rf /usr/local/Cellar/apkinfo
#
#git a && git cm "update" && git push
#
#brew update
#
#brew install apkinfo
