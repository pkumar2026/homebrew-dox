class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "d186d27c3db6cafff8ac4117083c52b87836fbc7f529c3cdcdcbb81805551251"
  else
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "6bd8ca6b6e33af6f85ed9bea0b913feb0b0462dc234cdd89a0dd0d7ba5620a73"
  end

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
