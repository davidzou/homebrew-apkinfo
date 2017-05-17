class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/apkinfohelp.tar.gz'
  desc 'Apkinfo test'
  sha256 '02ef6d07a029b3b2f9aad3ed6904f59f2311e0061753070cce972e25127da356'

  def install
    bin.install "apkinfohelp"
  end

  test do
    system "false"
  end

end
