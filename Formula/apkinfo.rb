class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '90837094345560aff32a0bf6d5f2deb6bb9f550fbc61ffbf0e2ddeb895d0f98c'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
