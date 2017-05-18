class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.zip?raw=true'
  desc 'Apkinfo test'
  sha256 'f2b44a6ad2666aa1dc0ab1dc7594e0b0976e4d91558688195164e1b4971b1fc3'
  version '0.0.1'

  def install
    bin.install "apkinfo"
  end
end
