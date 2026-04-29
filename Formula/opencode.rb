# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.29/opencode-darwin-arm64.zip"
      sha256 "39c483fe12cffe07bfc050d59df534ca1b5d29d9232da237586f1b6a2ef1c7e1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.29/opencode-darwin-x64.zip"
      sha256 "60d1c577998e5171183d55bf91e3bc699d5d91ab9998985d82240c87e2f30fec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.29/opencode-linux-arm64.tar.gz"
      sha256 "faedc954ab549235a32f1bf10cb92206dbac58327a85530554e5e02feb28060e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.29/opencode-linux-x64.tar.gz"
      sha256 "d985e99d7e22446b78fc78a35cfa0ef8b0feff05be5288c4a0e1c6837b7a29f8"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
