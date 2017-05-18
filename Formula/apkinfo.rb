class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 'dde6383df6a118fa544bc1be42f04702084a086a1656f9177d5ad23551b3adda'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    lib.install "tools"
  end
end
