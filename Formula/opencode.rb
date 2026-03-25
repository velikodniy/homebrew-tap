# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.2/opencode-darwin-arm64.zip"
      sha256 "36073ae40f4d036beaf937e693e9407d616c15d5838acdb987600ede5fb50426"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.2/opencode-darwin-x64.zip"
      sha256 "1829f3de57b44ef97325ef9affe0e326ec961d2cb9c1a7e9b510973cea0df3d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.2/opencode-linux-arm64.tar.gz"
      sha256 "76eae5601ccb90454d90a9a0f9a6f5c189b84943a9081671f028e56e58c4dfc1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.2/opencode-linux-x64.tar.gz"
      sha256 "6d66c24f14742618f1d6248d2a8a9d9692d44e61ee15dcef70e8310920a2df70"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
