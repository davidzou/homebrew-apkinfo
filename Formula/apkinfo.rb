class Apkinfo < Formula
  homepage ''
  url 'https://github.com/davidzou/homebrew-apkinfo/blob/master/tarball/apkinfo.tar?raw=true'
  desc 'Apkinfo test'
  sha256 '513bc7929853a3fd21518b39949556a72128c8011909a502fcfcaa556d0ffd95'
  version '0.0.1'

  def install
    bin.install "apkinfo"
    ("tools").install "tools"
  end
end
