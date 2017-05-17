class Apkinfo < Tap
  name "apkinfo"

  def install(options == {})
    prefix.install "apkinfo.sh"
  end

  test do
    system "false"
  end

end
