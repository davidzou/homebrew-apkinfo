class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.3/apkinfo-command-v0.0.3.tar.gz?raw=true'
  desc 'Apkinfo test'
  sha256 'dc4c6db91af2193fcedfdc9b2a77b6ddc083d1306904d83f97e4d766f9babe57'
  version '0.0.3'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
