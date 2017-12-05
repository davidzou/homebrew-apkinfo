class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.3/apkinfo-command-v0.0.3.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'eb472762b8ea1296a50d1e3c3bbc15aa9dae52286779277a48bf78de76684490'
  version '0.0.3'

  def install
    bin.install "apkinfo"
    include.install "tools"
    man1.install "apkinfo.1"
  end
end
