class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '389595a7804ea1faa60370f30fe59ff515b7284ebce8b0af9bc57e42c8fc42b5'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    (tools).install "tools"
  end
end
