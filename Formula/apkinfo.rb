class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'cffb0379ac2e70312af60fa024f48698ceaf618bfd26998c31bf45b8cd735c02'
  version '0.0.1'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
  end
end
