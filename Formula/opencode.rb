# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.9/opencode-darwin-arm64.zip"
      sha256 "b9b4451c2ff278543c8cff53d1eb2d42886aa1462311f3d8458ee0c1caeb0acb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.9/opencode-darwin-x64.zip"
      sha256 "dd0ebfde1df3515801647a70883e6e2fdb46ae942fe183de119b2b32db40a875"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.9/opencode-linux-arm64.tar.gz"
      sha256 "65490bc70285f57268455c7b5b32df35bcf6fb0c03a4296b1898cdc0132d38d2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.9/opencode-linux-x64.tar.gz"
      sha256 "a0c0812b506e20f055647339ac4153ca3399d8b8993074c2168df9c6cad71f8f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
