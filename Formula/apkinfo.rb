class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar.gz?raw=true'
  desc 'Apkinfo test'
  sha256 '684d09d046f7c509185607a9189aec572b9b1f08137402563e212aebeabd7075'
  version '0.0.1'

  def install
    bin.install "apkinfo"
  end
end
