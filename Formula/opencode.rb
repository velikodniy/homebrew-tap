# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.40/opencode-darwin-arm64.zip"
      sha256 "8f328ec9275ec803d63e9ad5ca78dce31dc94e19690cd05e6afe3983676c3211"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.40/opencode-darwin-x64.zip"
      sha256 "31c9ddf15dda75505f739d95307538ce47221e2a65e5299d17820d7407525372"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.40/opencode-linux-arm64.tar.gz"
      sha256 "2a6d0853e2c66ab913386f4598b5251e629070a098e08c8582ec4f55636b2542"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.40/opencode-linux-x64.tar.gz"
      sha256 "d5314507b964bc98b52c8117a0b9d2cb0190eae04fb334bf5448762a5042968d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
