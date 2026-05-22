# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.7/opencode-darwin-arm64.zip"
      sha256 "335307ee87d3dac84986bf8f0bd4273a43c35fcb9b124556c2f4fad4a510e3a4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.7/opencode-darwin-x64.zip"
      sha256 "12e4a562bcd6e691eb846ceedc5c1f7bad88f047df3775be21aaf979bda959d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.7/opencode-linux-arm64.tar.gz"
      sha256 "d2ca40f11b0eb1648cbffaf9850c122a83062b21ada18e5db29558c6bfafee0f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.7/opencode-linux-x64.tar.gz"
      sha256 "6f7f95f13917b9aab8421dbb7e121abf2fecfecdccd16fd5b497f522f454f928"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
