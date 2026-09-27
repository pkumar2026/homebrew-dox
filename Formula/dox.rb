class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.3.0"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "19e523866a1466d64713272a6fe92df424512634d32ea164cca9dcb69c86e371"

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
