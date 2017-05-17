class Apkinfo < Tap
  homepage "https://github.com/davidzou/homebrew-apkinfo"
#  url "https://github.com/davidzou/homebrew-apkinfo/apkinfo-1.0.0.tar.gz"
  sha256 "no_check"
  desc "The command what apkinfo how to look up a apk file infomation."
  version "1.0.0"

  def install
    prefix.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
