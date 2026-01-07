# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.4/opencode-darwin-arm64.zip"
      sha256 "2c68c0ccf7d8ed56e17f33ae93ace0448b5be73dd5c41bafcc47a28efae28bbb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.4/opencode-darwin-x64.zip"
      sha256 "8458661736e2fff8ac249784eb7ccb778e96c844c0fe5f5d817897af482cb859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.4/opencode-linux-arm64.tar.gz"
      sha256 "c873dfcc7e1e4817913aaa79e1079a8a3b6c666b0cada9fcc16afe0765ef657d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.4/opencode-linux-x64.tar.gz"
      sha256 "68b64dc2989e53c0c7751a294548392310c789470ad963be6613943efa590b8f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
