class Eos < Formula
  desc "CLI for managing ETC Eos Family Software release downloads"
  homepage "https://github.com/pedropipehitter/eos-cli"
  url "https://github.com/pedropipehitter/eos-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "525b09b22ebb0db56c8b389f38fb986d53b24838fe04116679383101b37546b1"
  license "MIT"

  depends_on "gh"

  def install
    bin.install "bin/eos"
  end

  test do
    assert_match "eos ", shell_output("#{bin}/eos --help")
  end
end
