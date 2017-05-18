class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '68b61a2333d9691a8a3dda7f5bb593ef1c017b97f57b6c7e3f4382dde1db0427'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
