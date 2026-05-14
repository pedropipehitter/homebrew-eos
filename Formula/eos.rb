class Eos < Formula
  desc "CLI for managing ETC Eos Family Software release downloads"
  homepage "https://github.com/pedropipehitter/eos-cli"
  url "https://github.com/pedropipehitter/eos-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "21bf14f57858baf90e65e37b4fee22097224167d133917277e545db3004837ca"
  license "MIT"

  depends_on "gh"

  def install
    bin.install "bin/eos"
  end

  test do
    assert_match "eos ", shell_output("#{bin}/eos --help")
  end
end
