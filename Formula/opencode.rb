# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.24/opencode-darwin-arm64.zip"
      sha256 "858467155943c1030815047cbda2fd5074d1ba9309a00e5dd4585a19b3c4896e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.24/opencode-darwin-x64.zip"
      sha256 "4de4662d20a8834d8f93e45965ff5fabfbc0f69f15eb4bb33f0742eced54e203"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.24/opencode-linux-arm64.tar.gz"
      sha256 "58507b98c2902fd819b9d2639594eec4f36e5708f114ba028b1c3e877bb5e47d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.24/opencode-linux-x64.tar.gz"
      sha256 "20644ef6b85975f0b49c3ea131c8d49cdee854419b3b8cfb24476e01787a871e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
