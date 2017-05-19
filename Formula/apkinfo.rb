class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '0016775a75bdb3c033ae78330b0feb82d742fc8f71a55a32c1203c9b5a2dcd50'
  version '0.0.1'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
    man1.install "apkinfo.1"
  end
end
