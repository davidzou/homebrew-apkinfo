class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '1939afcd779e7756caf904881fe3443d87130220dacd536c42d7ebc4b012ee7f'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
