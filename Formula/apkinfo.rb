class Apkinfo < Tap
  homepage "https://brew.sh/"
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
