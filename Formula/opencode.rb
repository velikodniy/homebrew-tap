# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.7/opencode-darwin-arm64.zip"
      sha256 "47efed233667713fd3e0603ddaea95d0ee2076ce00dc9faa7dbc9208aeb13505"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.7/opencode-darwin-x64.zip"
      sha256 "feee11da7697a80e2fcf943ff9ca392d4e960c5ddabd918bdd6e4de790279b7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.7/opencode-linux-arm64.tar.gz"
      sha256 "6c791e453c2ca03ee3dea09ebd16bfdfac4837e45d344a1487cd196b80090fc7"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.7/opencode-linux-x64.tar.gz"
      sha256 "cb5d9d6d2f8fbef0a9c975ed4494f73b2a62f4e4ffd508bcc3212da4fa76c3da"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
