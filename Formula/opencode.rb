# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.2/opencode-darwin-arm64.zip"
      sha256 "1c9da110bbf3e13c480e0a2e55f61b09ebdb33cfc67029b61ffbb9f8566d67cd"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.2/opencode-darwin-x64.zip"
      sha256 "9df7a1c7552a9573b9556ab9c1eb2b3cac46b380e25106a3d89b9ec662f44194"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.2/opencode-linux-arm64.tar.gz"
      sha256 "3f73a474065b4b7c4a64cef2395a6123ae1039c2e41f0acbe29ae6521b50df66"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.2/opencode-linux-x64.tar.gz"
      sha256 "4eff8d2cf8614ead97eadf1123d46033dc975eadeac3df04644a64bae0f9e819"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
