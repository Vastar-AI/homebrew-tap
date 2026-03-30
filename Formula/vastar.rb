class Vastar < Formula
  desc "HTTP load generator. Fast, zero-copy, raw TCP. Alternative to hey, oha, wrk."
  homepage "https://github.com/Vastar-AI/vastar"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/Vastar-AI/vastar/releases/download/v0.1.0/vastar-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "vastar"
  end

  test do
    assert_match "vastar", shell_output("#{bin}/vastar --version")
  end
end
