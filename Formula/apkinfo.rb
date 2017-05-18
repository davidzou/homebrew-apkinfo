class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '977f374ae21e2d82a95ee32644e17f9d5cb965a6b5b826be0990cc9d42bde5da'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    include.install "tools"
  end
end
