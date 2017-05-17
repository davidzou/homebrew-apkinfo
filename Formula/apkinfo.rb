class Apkinfo < Tap
  homepage "https://github.com/"
  sha256 "no_check"
  version "1.0.0"

  def install
    prefix.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
