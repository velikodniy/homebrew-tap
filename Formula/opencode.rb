# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.36/opencode-darwin-arm64.zip"
      sha256 "3c7f52940280725fc8047957cc22100074f818981fde2a7b9b33b9a54155334e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.36/opencode-darwin-x64.zip"
      sha256 "f38f054f18a78275f24ecf08a22dd3b78992a3f559c644bc8a9fcd7c6473e15f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.36/opencode-linux-arm64.tar.gz"
      sha256 "58aebcb19bcfd60782bdb9bfa24ac8f4139f991d3664b5c13807dcf29dce4082"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.36/opencode-linux-x64.tar.gz"
      sha256 "f31bc4927e2f2392793986de7863d71c671600195b86d015747774f6ea7e7df6"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
