class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '4545721711b514389fc3984ae3e6fc2e2afaf6531668a7bcd5f34ebcb59b8d93'
  version '1.0'

  def install
    bin.install "apkinfo.sh"
    bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
  end

  test do
    system "#{bin}/apkinfo"
  end

end
