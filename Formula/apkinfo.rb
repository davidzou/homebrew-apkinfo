class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'da12733c7c36139d440a9994efd8cb21d1cc1820477e44b8875eecdeedae331d'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
