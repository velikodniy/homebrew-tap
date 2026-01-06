# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.3/opencode-darwin-arm64.zip"
      sha256 "47b7c75f1811ce4eec6298060a1457043796c963f0614505fda26397216c4b0a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.3/opencode-darwin-x64.zip"
      sha256 "e222fd5c7bd8a465ead9a46e124a677691b5c9704f677711717df22c479961a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.3/opencode-linux-arm64.tar.gz"
      sha256 "aa0d2050c64f1676ecbd1fa61a9927052cd8e6615372700d930e61dd5f4bc186"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.3/opencode-linux-x64.tar.gz"
      sha256 "e74ac85cb0b9adafbc97c6be591247bfe2509700c44a05fdda911756157d8b82"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
