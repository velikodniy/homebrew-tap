# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.0/opencode-darwin-arm64.zip"
      sha256 "7327c85569b10e9ec5249a9643f0fd477e117db56c46776d95737cbc0486f950"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.0/opencode-darwin-x64.zip"
      sha256 "8a19d333f1c37f5321ba9076dfd044deab08bf5fe094fc7d2c60f95819b3ac13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.0/opencode-linux-arm64.tar.gz"
      sha256 "6a1ae2b44d15b531b7e0aa1c6239f16f8a15ec9f921457bfa8a2b12e22358ed3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.0/opencode-linux-x64.tar.gz"
      sha256 "5c82f608207ae8254c43e331d90d96915aea19e78474e311b2c88b6bbb7c93f0"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
