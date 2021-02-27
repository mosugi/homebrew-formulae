class Mshare < Formula
  desc "macOS CLI Wrapper for NSSharingService"
  homepage "https://github.com/mosugi/mshare"
  url "https://github.com/mosugi/mshare/archive/1.0.0.tar.gz"
  sha256 "fd96b9e76fa80e060cabc85539f6750a1a99495643aaeea9f411dd90d55f60a5"
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
