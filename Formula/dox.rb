class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.2.2"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "f4a895c4f4161ca8e3104d717077b311aa31cbf32ca330c53458bdc0eb2dcf08"

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
