# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.5/opencode-darwin-arm64.zip"
      sha256 "6e9bdb0490e58e750293fba0ce933ac62604da6f95b35adef41ea7c001c41660"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.5/opencode-darwin-x64.zip"
      sha256 "85424753718b5b4984d71360c0438854fc2bcd53fa057968ce92a4e71e992c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.5/opencode-linux-arm64.tar.gz"
      sha256 "90e4df8ebc953952e4dc4f17c2e47f4d506bc44b048aa3d027b1791bf2fcd575"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.5/opencode-linux-x64.tar.gz"
      sha256 "c766b662c591a1f75aa5e50c4385fbe995f5896a8b56bcc67bef1af3f31e0740"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
