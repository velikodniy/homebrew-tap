# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.6/opencode-darwin-arm64.zip"
      sha256 "b7469fe5d47718f2a9b4db8021f761fdc41ba3c5cf559350fa463e3b63e09769"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.6/opencode-darwin-x64.zip"
      sha256 "3564ba58b4f920ec5b9780a92b2ebdd7e7477d2eb1fb9a333c801019b2078d81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.6/opencode-linux-arm64.tar.gz"
      sha256 "16c8aa9d34f7ccccf28b7b0779ecafc32b02b8250131a8b1ab09ebadde5f3459"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.6/opencode-linux-x64.tar.gz"
      sha256 "7b3437f7c2a61ff6aba688854c2e16f24826437ca3a2065b4b348770fac6c996"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
