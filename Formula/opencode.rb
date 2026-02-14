# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.65/opencode-darwin-arm64.zip"
      sha256 "d208b471440e1125606eafaffd5047c565f7f5aaf32b76eb33d9a0369e9ddae4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.65/opencode-darwin-x64.zip"
      sha256 "1f96b5b975b842353d54243b84583736839adaabfb223272720d2ff4315ff012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.65/opencode-linux-arm64.tar.gz"
      sha256 "7048deddf4caccf456d1adce8d84b23bb92ca7e53018f83a308f64bc17f41c5d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.65/opencode-linux-x64.tar.gz"
      sha256 "264d236b37a539bc235ab5d67b3e4fd082844775353e5153514dc105e240ef6b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
