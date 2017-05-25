class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'a1558d66f22993a01b722cb500e8695c16f5cec6c1fe7f22292bbe0c72618bd5'
  version '0.0.2'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
    man1.install "apkinfo.1"
  end
end
