# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.25/opencode-darwin-arm64.zip"
      sha256 "418694d2b61eec580c9a58a58cbd0282c8f85f159d51de914f56949899f44d01"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.25/opencode-darwin-x64.zip"
      sha256 "606d30ca83025d16f6b85c549c1b8630f1fe298e12e0c40c215ee7bcae6cefd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.25/opencode-linux-arm64.tar.gz"
      sha256 "c14ad827c8097d9343bbaa51767486ee2e122e7b330917545e19a86c0148888c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.25/opencode-linux-x64.tar.gz"
      sha256 "b4bf44260741941a35c404137e58dc3736d4aae231c20dd47b81d4eb56ca1731"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
