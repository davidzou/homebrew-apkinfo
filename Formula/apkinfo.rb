class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/apkinfo.zip'
  desc 'Apkinfo test'
  sha256 '4ea60ffc4220dad4669dd43e185f1f4cbd832bf2c36fe28dc6a19fd8678e5af5'
  version '0.0.1'

  def install
    #libexec.install Dir["*"]
    #bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
    #bin.install libexec/"apkinfo"
    bin.install "apkinfo.sh" => "apkinfo"
  end
end
