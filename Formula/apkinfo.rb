class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '3cab2d3fcc758e62d3d935809684e7695d6e0d35f995fe8c76753c0a26a80552'
  version '0.0.1'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
  end
end
