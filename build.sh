#!/bin/bash

# 当前版本号
VERSION=0.0.7
# 发布文件包名
FILE_NAME=apkinfo.tar

# 删除已有的编译缓存目录
if [[ -d build ]] ; then
    rm -rf build
fi

# 替换打包版本配置文件值
sed -ig "s/^build.version=.*/build.version=${VERSION}/g" gradle.properties

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
sed -ig "s/version '.*/version '${VERSION}'/g" Formula/apkinfo.rb
sed -ig "s/applicationid version .*/applicationid version ${VERSION}'/g" Formula/apkinfo.rb
sed -ig "s/url.*/url 'https:\/\/github.com\/davidzou\/homebrew-apkinfo\/blob\/master\/tarball\/apkinfo_${VERSION}\/${TAR_NAME}?raw=true'/g" Formula/apkinfo.rb


# 清理缓存文件
rm gradle.propertiesg
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
