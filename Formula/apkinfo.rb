class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.zip?raw=true'
  desc 'Apkinfo test'
  sha256 'b2a6fcc994e98bb10b037da55b65b7c04a6afaec390654361ee0fc2a37ff69a4'
  version '0.0.1'

  def install
    bin.install "apkinfo"
  end
end
