class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.2.1"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "d186d27c3db6cafff8ac4117083c52b87836fbc7f529c3cdcdcbb81805551251"

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
