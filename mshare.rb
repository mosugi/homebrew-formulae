class Mshare < Formula
  desc "macOS CLI Wrapper for NSSharingService"
  homepage "https://github.com/mosugi/mshare"
  url "https://github.com/mosugi/mshare/archive/1.0.2.tar.gz"
  sha256 "a0cbd661572ea279cb722335155d9777de8307df17b71d823ada6ea15136906e"
  license "MIT"
  head "https://github.com/mosugi/mshare"

  depends_on xcode: "11.4"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/mshare", "mshare"
    bin.install "mshare"
  end

  test do
    system "false"
  end
end
