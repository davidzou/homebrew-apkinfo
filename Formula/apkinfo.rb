class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.3/apkinfo-command-v0.0.3.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'da523e2a2baea25d87bbba89343feb97b1c87f0804587f2480016580f2455aa3'
  version '0.0.3'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
