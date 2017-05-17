class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 'd0c1bbb0de0b7a091fbdb5b8e4efde8c191f2cb03f4268017486e0d727eeae1f'
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
