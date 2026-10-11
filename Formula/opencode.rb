# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.0/opencode-darwin-arm64.zip"
      sha256 "0d5f511948d6fbfedf9bb16753c0ac42613dcc8de75d9deb7e8d0cf584c8fba6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.0/opencode-darwin-x64.zip"
      sha256 "515380b03f3410f2178c8c1c7ba6d1e9556a3bdee2a01d114e7b1681952131a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.0/opencode-linux-arm64.tar.gz"
      sha256 "e9841d43d3e1a8f36ed2691592d3b8b4fb097e606c8b559a277a1b845840e26b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.0/opencode-linux-x64.tar.gz"
      sha256 "7bb9e61ad6feacf2e89c10a6a2c1840e3de4220bb50ba1fc7110f31806076aec"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
