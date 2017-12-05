class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.4/apkinfo-command-v0.0.4.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '3b5b49e54d24551365e4c952d5a7621dbbc80e8826df6b4371379f42d5b8b44e'
  version '0.0.4'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
