# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.6/opencode-darwin-arm64.zip"
      sha256 "5b216ba4387bfcdf3b2cd2185e1c9bec2742f7e3d83b8731f9aa864c4517bcff"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.6/opencode-darwin-x64.zip"
      sha256 "2f7802251f05d2ed9a128bdeca18f0ba401bba75e2301e4619b9d586536d1246"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.6/opencode-linux-arm64.tar.gz"
      sha256 "a02f7a8dda114f30559b73b94dca5302742731bcac6394463436ba1462733d83"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.6/opencode-linux-x64.tar.gz"
      sha256 "1299d49d1c9e8b07217d92cea14050650c0b5a81c2ac380d6ec0d1d26abbe61a"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
