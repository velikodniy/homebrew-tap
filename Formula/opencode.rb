# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.11/opencode-darwin-arm64.zip"
      sha256 "1b83133bc12b60a82abff10fb7d1c0c6576b49c6c4a39890b346ff90f5634bde"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.11/opencode-darwin-x64.zip"
      sha256 "f7dbed021ee60fd5d3e4bed5c0361b92c6226b7010bcfe3a7258db462806b86e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.11/opencode-linux-arm64.tar.gz"
      sha256 "2fc9fbdaafe93d7b32085f604f90b79b5aaa2559478dc188979ac69d5e0eed55"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.11/opencode-linux-x64.tar.gz"
      sha256 "ace0bfc38ca4a6f74eb24a53ebd1ae383c81878b5a30eab8027c68a0a15b1b45"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
