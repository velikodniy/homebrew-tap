# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.10/opencode-darwin-arm64.zip"
      sha256 "ad880664b6b012cdaefc4d175a96afef395c481b9328c8eb5db143a8644ad1d9"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.10/opencode-darwin-x64.zip"
      sha256 "1d94196ef119e965d57192dce212490a819a48d63cf89c90c68159d790ade067"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.10/opencode-linux-arm64.tar.gz"
      sha256 "d9a9d4f0bc1ed246258c0e8846e80593755a72bf4afd3940c4071d6f0b7b7775"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.10/opencode-linux-x64.tar.gz"
      sha256 "ebcc24012e8f067b10d7416430c88e9c429115ecfbccf8da9eb59db3b629a358"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
