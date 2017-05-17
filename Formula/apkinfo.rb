class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/raw/master/apkinfo.tar.gz'
  desc 'Apkinfo test'
  sha256 'a3f4fe933d65c2b02add4d024bda8e7793f1565f25876c61809cb961bd864635'
  version '1.0'

  def install
    libexec.install "apkinfo"
  end

  test do
    system "false"
  end

end
