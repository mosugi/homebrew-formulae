class Mshare < Formula
  desc "macOS CLI Wrapper for NSSharingService"
  homepage "https://github.com/mosugi/mshare"
  url "https://github.com/mosugi/mshare/archive/1.0.1.tar.gz"
  sha256 "c7348d774b513cad46d41da9ed4dad6491b6ea32e077abeeedbd2d7f16f96dce"
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
