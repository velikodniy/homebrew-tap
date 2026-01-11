# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.12/opencode-darwin-arm64.zip"
      sha256 "ae8b67633d340adfd0e6462f0ab94385a457031c88c0b8af5ae7219079b7d0c8"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.12/opencode-darwin-x64.zip"
      sha256 "51a3b1f28414d964fbc1456aae7529adfd2d83d83e4f18bb611536786cb1e19d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.12/opencode-linux-arm64.tar.gz"
      sha256 "6ce5cbd4d3d2f98bbacb54aa7fd243ffab249311e2ac4d41ff3e9163039bba15"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.12/opencode-linux-x64.tar.gz"
      sha256 "7a216e05b4f51abcf5501ac67e0db6cf601d0af13feb8e35bcb5430fa2fd0e01"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
