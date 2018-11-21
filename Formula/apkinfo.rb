class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.7/apkinfo-command-v0.0.7.tar?raw=true'
  desc 'A command what to look up a apk info, that include meta-data applicationid version 0.0.7'
  sha256 '5a6e8f0ed12524dd1a423decb0c6ff775123b5dc4cc8e96c877d0f47896efa53'
  version '0.0.7'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
