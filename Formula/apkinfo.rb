class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'cbcfab7aa70896a841131ad8a8893b1ba95b44338739bc401f80b1b72b37c4c8'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
