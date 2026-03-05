# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.17/opencode-darwin-arm64.zip"
      sha256 "7d56a7b0f85b7d71047bdb3586593b1184a848d0b5467c3cf5893be0097db7f1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.17/opencode-darwin-x64.zip"
      sha256 "3216fa7ed9ec9e84f98dbde5166b8e013daf7d1b9676d05fcdc36fdb8f3f92e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.17/opencode-linux-arm64.tar.gz"
      sha256 "a8c8958274c9b6d9939253b7779a8628c03ec34abbf874cfd5021dd1add12f83"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.17/opencode-linux-x64.tar.gz"
      sha256 "dbfe556df45ac999eff95248269ccdd06ee2052983bb03b9501fe9dda2d1f695"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
