# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.13/opencode-darwin-arm64.zip"
      sha256 "6a85ae6de1aeb8e39ae4d977337b03f49168c2a827ee37b6f82c39471d711c63"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.13/opencode-darwin-x64.zip"
      sha256 "5a119461c6ba265a9406bad616e2f845ee66ab8d004be5b5336547af3415c3fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.13/opencode-linux-arm64.tar.gz"
      sha256 "dd4ac8c2167a8338caf296b002c955141d52a2e9c95ee0a95f4ae9939c293ab0"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.13/opencode-linux-x64.tar.gz"
      sha256 "8d500b20fed2d26e537e221895b1a575476571b4f0089bb29fb13eeb8eb9e937"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
