class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.3/apkinfo-command-v0.0.3.tar.gz?raw=true'
  desc 'Apkinfo test'
  sha256 '7f306a8b25c42a425f146d7b5e68e7409a6a00fe8f91817ad467da0da82529b2'
  version '0.0.3'

  def install
    bin.install "apkinfo"
    include.install "tools"
    man1.install "apkinfo.1"
  end
end
