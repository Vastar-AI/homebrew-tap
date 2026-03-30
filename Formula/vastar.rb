class Vastar < Formula
  desc "HTTP load generator. Fast, zero-copy, raw TCP."
  homepage "https://github.com/Vastar-AI/vastar"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e157007f7a0b6163fcb67695ae4f93ccf6f21f8fab08ccc996283d4d0b5c013e"
    else
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "48b5603aa23a9772afb14f28fec1244ca4391d8109ad85cb4648c2072b6c915c"
    end
  end

  on_linux do
    url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f5e679c0d153889bf5d684c082853b666f12abe38d45aaa3716b7508365e6b8c"
  end

  def install
    bin.install "vastar"
  end

  test do
    assert_match "vastar", shell_output("#{bin}/vastar --version")
  end
end
