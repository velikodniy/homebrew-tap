# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.14/opencode-darwin-arm64.zip"
      sha256 "ec018c0ac8bcd0669ddbf9bf6bbf09001cede7fc460381db27c2732588afb098"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.14/opencode-darwin-x64.zip"
      sha256 "06ecdc8bc60f9c4fc0a632f1ce72500264d6ca1daac78f7903815ed227045855"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.14/opencode-linux-arm64.tar.gz"
      sha256 "40b743178d7cf493a8c8ed43648b1a31aaeeaa0a53ebc39944523ec806694d5f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.14/opencode-linux-x64.tar.gz"
      sha256 "38a870d0951a73f640eae7db1729364bc4e3a8405f7f3e1ded4994f7cd53ed2e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
