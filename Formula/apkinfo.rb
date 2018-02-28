class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.5/apkinfo-command-v0.0.5.tar?raw=true'
  desc 'A command what to look up a apk info, that include meta-data applicationid version '0.0.5'
  sha256 '084b6a08e0776b21479ad325a331374b713e41a75ecdc595a11782bc42a5a38f'
  version '0.0.5'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
