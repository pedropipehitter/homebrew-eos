class Eos < Formula
  desc "CLI for managing ETC Eos Family Software release downloads"
  homepage "https://github.com/pedropipehitter/eos-cli"
  url "https://github.com/pedropipehitter/eos-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b9a4452c0f5d9fd7099833f05a53f9cf5afbf355f7379740c0600b7aa98e91af"
  license "MIT"

  depends_on "gh"

  def install
    bin.install "bin/eos"
  end

  test do
    assert_match "eos ", shell_output("#{bin}/eos --help")
  end
end
