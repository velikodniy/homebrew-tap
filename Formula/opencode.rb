# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.19/opencode-darwin-arm64.zip"
      sha256 "0026326bd77a3277ab3726be237410b19389f7829e8bb3c82dfaf9044162067c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.19/opencode-darwin-x64.zip"
      sha256 "ee495d7c30263c2cecb81a4558a9c4d29ac7b27c1df822e9d344a69cb56a75c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.19/opencode-linux-arm64.tar.gz"
      sha256 "506f98a1f618551f1f6fc5dcf591f824bef9d6819d40b27928ad7febcb7c363b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.19/opencode-linux-x64.tar.gz"
      sha256 "7bb35487c55f9957f5d91ae60be6fa49fc8f74629c210c1719ed75fdbf7e2bd9"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
