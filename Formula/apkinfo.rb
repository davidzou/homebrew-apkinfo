class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '7e4d9b730476addcc236f88169ae7187213bfeda216af804b91bfb8a55327fc5'
  version '1.0'

  def install
    bin.install "apkinfo"
  end

  test do
    system "false"
  end

end
