class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '2aac8271e35efb92ec33a869adba244ffc5b5cd369f6688dcee11c1ad01a4e80'
  version '1.0'

  def install
    bin.install "apkinfo"
  end

  test do
    system "false"
  end

end
