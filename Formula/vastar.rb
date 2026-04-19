class Vastar < Formula
  desc "HTTP load generator. Fast, zero-copy, raw TCP."
  homepage "https://github.com/Vastar-AI/vastar"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.3.1/vastar-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd2d793cb8c669c5594b1e3ec49c6db5f99f6280f91edd6b6e70bd0ab47d68ac"
    else
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.3.1/vastar-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "3b98d40016ab9fc131d417a8496a424ca40d96d0e32b18585a876d51f96c83ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.3.1/vastar-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "841e7f88b407a9a47d921dd6b375f34086aa902b27cb3598e5b8314a87d3b429"
    else
      url "https://github.com/Vastar-AI/vastar/releases/download/v0.3.1/vastar-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adac1ec5933ff19023a222a620be582ca4b6875aad3c4750cc4485e27e138430"
    end
  end

  def install
    bin.install "vastar"
  end

  test do
    assert_match "vastar", shell_output("#{bin}/vastar --version")
  end
end
