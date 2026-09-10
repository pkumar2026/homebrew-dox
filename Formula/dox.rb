class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "c41805da4417a9bec675e73b7eb1e00365ca91a77e33c753fe9b72a35c7e0689"
  else
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "d4bee2565ad7e9703bc8184317435ebd1892887a3c8eb89a4839bc54b1c103a7"
  end

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
