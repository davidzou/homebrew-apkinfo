class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '174f78b3b0177fb0108ea7d5a70ec0c904fc16656ccc90f3fe88f21dcd9618cf'
  version '0.0.1'

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
    bin.install libexec/"apkinfo"
  end
end
