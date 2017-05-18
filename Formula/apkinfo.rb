class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '46472634a83fa22c6f481ab65da8829cb58e781e2535230c424bc2a6ff38c1c1'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
