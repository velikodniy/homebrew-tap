# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.4/opencode-darwin-arm64.zip"
      sha256 "8a0f27c579f2973a515adcca982580aafca3eb227b14ae69f4252c00c7f45774"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.4/opencode-darwin-x64.zip"
      sha256 "312b37ceb3ed723bd3f3f3d2fd2b8022c6479baf9eeaf5eb451eb19ae9c9d804"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.4/opencode-linux-arm64.tar.gz"
      sha256 "52787b62507a30c92e1bda804ec7ca9496896da74e9b935e307c1d402077593f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.4/opencode-linux-x64.tar.gz"
      sha256 "b94384213047642ba4b39ebb8d2bbba34bddde26840edf67cae59512c0dfc3be"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
