class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '784f714ead3f53e6b800407499adf93982b563e86ea01035018e6ec2f0305247'
  version '0.0.1'

  def install
    bin.install "apkinfo"
  end
end
