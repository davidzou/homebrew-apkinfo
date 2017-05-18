class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar.gz?raw=true'
  desc 'Apkinfo test'
  sha256 '34880998ab6f69b6cdfe84ea6e26f6b7782119f4b3422a5e153b0168eed5bd8b'
  version '0.0.1'

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"apkinfo"
    bin.install libexec/"apkinfo"
  end
end
