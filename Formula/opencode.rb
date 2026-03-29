# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.4/opencode-darwin-arm64.zip"
      sha256 "d95eb21d4784d29014f353bcd2a6605ec40d3e72881a081829d023f2389801a1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.4/opencode-darwin-x64.zip"
      sha256 "56914d04d2e027ccbd0dbd87a5955ee5105967a49d2d1f0c508e8d9dd4fe04d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.4/opencode-linux-arm64.tar.gz"
      sha256 "1ac5c79e5bd04598e122aa478306637c672f23e487d7f67c14c42d6a3a6cab66"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.4/opencode-linux-x64.tar.gz"
      sha256 "2c22e40f685597011e182c02c7b635bec060476f90f0b49b8158036501d1bb10"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
