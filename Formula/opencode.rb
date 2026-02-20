# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.9/opencode-darwin-arm64.zip"
      sha256 "33539e5d603b87a7faf57f09ad0450e8549c933dde629a822aadb8e24c3aa362"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.9/opencode-darwin-x64.zip"
      sha256 "4011eaf4a28969a3267ce5d19de352cc7f94d1d72e09728fc4ba7857bf29f62c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.9/opencode-linux-arm64.tar.gz"
      sha256 "3d989ea59c542da2b96ed2484524bce254719fa470da85fed6a631a472ac47e5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.9/opencode-linux-x64.tar.gz"
      sha256 "7727b84cd077c954d914b1cf7c19eb81530d110373173b8cb41007f34f6efcd3"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
