class Apkinfo < Tap
  version "1.0.0"

  def install
    prefix.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
