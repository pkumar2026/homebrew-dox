class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.4.0"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "a88958ea0fc6098c9ebdb840212595b937f24330437c3a636c71b28227350c77"

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
