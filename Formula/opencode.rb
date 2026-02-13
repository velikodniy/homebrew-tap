# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.64/opencode-darwin-arm64.zip"
      sha256 "7a007b196e69b533c3e6fe41d30cb6000b93b4cf77ca9dd6c51de6482b1c7776"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.64/opencode-darwin-x64.zip"
      sha256 "4a1a24c974d470d58624975d8a6aa858914df7943dbd10d4fe0cbb037b755c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.64/opencode-linux-arm64.tar.gz"
      sha256 "6eb5298d166f77a163d7c8c9e82bbfea597e26e30d2c567893343935892fd946"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.64/opencode-linux-x64.tar.gz"
      sha256 "448349097ce93d96e5d227940fde54f71fff0d476cb2b1672417efda92a57c1e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
