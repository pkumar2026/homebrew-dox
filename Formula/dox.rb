class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.2.3"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "a90bd3afb6601fba4cfa99fa92062430a5fa447bb75df596ec39313a9dfb7c1f"

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
