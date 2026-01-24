# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.34/opencode-darwin-arm64.zip"
      sha256 "7fce2f01747a884793644b4844356304e5a3226ff4619ff9670c4e1153328127"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.34/opencode-darwin-x64.zip"
      sha256 "fe9cf46b2b436090937fc89e039002d0614c6383231b8ace9782886de28877e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.34/opencode-linux-arm64.tar.gz"
      sha256 "0c0b47b25a0e9732f80e8e152ec3c8ba01e8cb60f829a5ee9634ef1a3456f703"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.34/opencode-linux-x64.tar.gz"
      sha256 "9773d85d306e13797ddc8e0e55e610a59de98d53814d0bea0c03b91289cc6ff6"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
