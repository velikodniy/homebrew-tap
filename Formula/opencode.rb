# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.6/opencode-darwin-arm64.zip"
      sha256 "1de7b7c1d67e9a309020c5f5be8d76818ef10f5f0370b46f81a75b2336bba230"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.6/opencode-darwin-x64.zip"
      sha256 "f8352ec2f395911e625b622ea09f30518e5b6e1e244e0ea71a3cf39a9f8a7de9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.6/opencode-linux-arm64.tar.gz"
      sha256 "c4437b2712ed96837cb06b448b04d3d20f7ef100735b06ad319ab79ed011192b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.6/opencode-linux-x64.tar.gz"
      sha256 "9874d0857f7b01a09189ebb8af42ef20d556be3f0d054563e5eef1234528c71f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
