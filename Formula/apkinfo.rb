class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '491feb8d4aaa64ef41d3a5af7cdf0d22efe0cceba39138e1a6a9c934cd68ce41'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    (tools/).install "tools"
  end
end
