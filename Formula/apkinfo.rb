class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'f2f9a32137c4532bad8b975d20acff9df3799226c6d657ed169243ce89756b84'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    include.install "tools"
  end
end
