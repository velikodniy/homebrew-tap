# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.6/opencode-darwin-arm64.zip"
      sha256 "988095413c4668c890364a720e44bc3bbac6f67ef1b9d04fb10dce55d507af00"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.6/opencode-darwin-x64.zip"
      sha256 "670ab5c43beab8dba0181b49d11cd479623ae4fbbcf94a0a161f37c500c6fe6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.6/opencode-linux-arm64.tar.gz"
      sha256 "5bc272b49c60cfdd0a6a4a1948f4530ce992bdb8eff9ae355c4a40c00f75e534"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.6/opencode-linux-x64.tar.gz"
      sha256 "6cac705f9259415365079961c5f652269ed9e3a4613ce874f15a9d36366bea7d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
