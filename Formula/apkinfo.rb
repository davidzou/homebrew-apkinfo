class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/apkinfo.zip'
  desc 'Apkinfo test'
  sha256 '6c6d7d2600ae83ece328403064feea2e98db49bea0f1530202a69ee4ac362823'
  version '0.0.1'

  def install
    #libexec.install Dir["*"]
    #bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
    #bin.install libexec/"apkinfo"
    bin.install "apkinfo.sh" => "apkinfo"
  end
end
