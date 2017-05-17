class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '1fb175becf05859c2b4359c47f1e87c3680b1bceb7066be819dbb6b8aaf4d278'
  version '1.0'

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
    bin.install libexec/"apkinfo"
  end

  test do
    system "#{bin}/apkinfo"
  end

end
