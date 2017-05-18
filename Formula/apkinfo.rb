class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '76b2f2e5b5ba27755e853570a8d8870202340b0d17a4dd6dac05664a401727a8'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
