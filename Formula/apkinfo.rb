class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '2844438c4c8e0bc238bc09405840ed6ef56a4853f6fe04e975d4b4663cbf4258'
  version '0.0.1'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
  end
end
