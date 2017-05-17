class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '88ad36ea844eeed0418a596a60f09586f723fcf3051f41e9a427d59bd8373156'
  version '1.0'

  def install
    bin.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
