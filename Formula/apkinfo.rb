class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'ecf12190782312adf23e6eb9de9f36df1159d2640a4cb9736dbf2cb7939c7953'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
