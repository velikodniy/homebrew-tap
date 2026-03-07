# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.20/opencode-darwin-arm64.zip"
      sha256 "20386056bffdc4ec52155fb107fb470d47297f86dc405f993992596dc3eb4a81"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.20/opencode-darwin-x64.zip"
      sha256 "51b1ddcb01dc1441217a6cf6730e09635ecbc38865a8fd2abf721ddf7d3b0dc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.20/opencode-linux-arm64.tar.gz"
      sha256 "a0813a706c8865cf61b2ec152f116af09519bff703c774ab16b4a667b154d683"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.20/opencode-linux-x64.tar.gz"
      sha256 "90188b53eadbdf36e9ab450c2c37ed567471651005fe28f4cf6587a7fb4eeba5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
