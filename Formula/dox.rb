class Dox < Formula
  desc "Focused Docker TUI for colima -- lazydocker, but smaller"
  homepage "https://github.com/pkumar2026/dox"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "dc4bea9cdd0c7faa60c460d4056ccad24605b67652cc3451e625b8e23b8aa03a"
  else
    url "https://github.com/pkumar2026/dox/releases/download/v#{version}/dox-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "9498bef60bb62c328d4c65bf767c242433aeb67d387e0266a0f64ecc9039c729"
  end

  def install
    bin.install "dox"
  end

  test do
    system "#{bin}/dox", "--list-containers"
  end
end
