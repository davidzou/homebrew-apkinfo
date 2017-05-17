class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '02ef6d07a029b3b2f9aad3ed6904f59f2311e0061753070cce972e25127da356'
  version '1.0'

  def install
    bin.install "apkinfo"
    bin.mkpath "apkinfo_tools"
  end

  test do
    system "false"
  end

end
