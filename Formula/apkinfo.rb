class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.8/apkinfo-command-v0.0.8.tar?raw=true'
  desc 'A command what to look up a apk info, that include meta-data applicationid version 0.0.8'
  sha256 'ae20517270275455e25a0d69229f7583dc6d9f5ef44b9980c2061c560c426671'
  version '0.0.8'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
    system "rm", "-rf", "~/.apkinfo"
  end

  def uninstall
    system "rm", "-rf", "~/.apkinfo"
  end

end
