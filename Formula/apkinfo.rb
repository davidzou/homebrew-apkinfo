class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '2f15e0c7f69bad22168fd44c6e6bfc417117f448cca604c5a41d836f336bc3de'
  version '0.0.2'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
    man1.install "apkinfo.1"
  end
end
