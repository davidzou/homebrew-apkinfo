class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.3/apkinfo-command-v0.0.3.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '455d1eeca941c3633de101335a1421f9f74ed58920eef5a4c6939e229cb5e1d2'
  version '0.0.3'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
