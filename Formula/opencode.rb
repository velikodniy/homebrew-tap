# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.11/opencode-darwin-arm64.zip"
      sha256 "f82f0bdb285836971c63677dd18d7005dbaf46bfd04e22383905bf8453f4db8c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.11/opencode-darwin-x64.zip"
      sha256 "3fd54f156370922d8267eab61ef6eb532110639c5b82d82435e437c2ee778460"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.11/opencode-linux-arm64.tar.gz"
      sha256 "93e4399f308c49387c25ec2b570602bf0f9dd5f57989427946c0c28dbf259ff4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.11/opencode-linux-x64.tar.gz"
      sha256 "49317253722c698394980e1921ff28e919d79bb29d5c3f4cf314a4adaf7037cd"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
