class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo_0.0.6/apkinfo-command-v0.0.6.tar?raw=true'
  desc 'A command what to look up a apk info, that include meta-data applicationid version '0.0.6'
  sha256 'e66cd6821847de6442b7efb4630f6357367d335b02a255892a34c9304dc53eaf'
  version '0.0.6'

  def install
    bin.install "apkinfo"
    include.install "tools"
    include.install "options"
    man1.install "apkinfo.1"
  end
end
