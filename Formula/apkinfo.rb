class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'acbb58aeec3aac3929413c7c85cad1c36847106ce2c44a55b250e77d52a374c3'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    include.install "tools"
  end
end
