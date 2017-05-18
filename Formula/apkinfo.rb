class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '285f6f9e2923f18f9ef379538c3fac537b85b1d6f7ca1e90478ffd05ad60c096'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    install "tools"
  end
end
