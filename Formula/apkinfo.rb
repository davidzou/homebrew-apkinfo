class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 '75f51d9b6728046622000aecf6e20a16bfd02b5e4b24f731ed3a01e6c2513da8'
  version '1.0'

  def install
    libexec.install Dir["*"]
    bin.install "apkinfo.sh"
    bin.install_symlink libexec/"apkinfo.sh" => "apkinfo"
  end

  test do
    system "#{bin}/apkinfo"
  end

end
