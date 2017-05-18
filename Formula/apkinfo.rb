class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '72bfac5c9e4209c65507b5381e223d2d10ea8f3750918a2a61e7b2eab99e7ebc'
  version '0.0.1'

  def install
    bin.install "apkinfo"
  end
end
