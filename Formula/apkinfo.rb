class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '44ddb32e9309fe1f350bd43ff29e49dfea8b138a8db87fa9519c693b77dfd6cc'
  version '1.0'

  def install
    bin.install "apkinfo"
    # bin.install_symlink libexec/"bin/apkinfo"
  end

  test do
    system "false"
  end

end
