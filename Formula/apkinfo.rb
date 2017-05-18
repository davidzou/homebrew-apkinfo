class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'a0020f21abd4c0436b3207673b2d866841f4369945c9b122e56a6ecb6b6eaeea'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    include.install "tools"
  end
end
