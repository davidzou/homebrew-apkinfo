class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 'c2cb06149da4dcdc3706162dfc788deec5cf5245f8b51473f4ad8cefc8ed57c3'
  version '1.0'

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"apkinfo"
  end

  test do
    system "false"
  end

end
