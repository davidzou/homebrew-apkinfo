class Apkinfo < Tap
  def install
    prefix.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
