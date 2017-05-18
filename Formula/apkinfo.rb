class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '5065c7d9ab4bef30fa69ef6e705394e2fd62f09f2a5f8fb7d2cc668e18d6f681'
  version '0.0.1'

  def install
    bin.install "apkinfo.sh" => "apkinfo"
    include.install "tools"
  end
end
