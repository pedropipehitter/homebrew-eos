class Eos < Formula
  desc "CLI for managing ETC Eos Family Software release downloads"
  homepage "https://github.com/pedropipehitter/eos-cli"
  url "https://github.com/pedropipehitter/eos-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0f28161ae1279baaf45851e4a0f4ad90e2d5452a54efcebfb985ebb63ffbf5c6"
  license "MIT"

  depends_on "gh"

  def install
    bin.install "bin/eos"
  end

  test do
    assert_match "eos ", shell_output("#{bin}/eos --help")
  end
end
