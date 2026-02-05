# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.51/opencode-darwin-arm64.zip"
      sha256 "c6688c38094976d3cece7497869cae78fd899f71eb9d2f45cfa752e604ab7be3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.51/opencode-darwin-x64.zip"
      sha256 "22d63f5f27bfe7e72d0687f75644342ccd5bb8ddeeebc990c759ce927f6964fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.51/opencode-linux-arm64.tar.gz"
      sha256 "d06753ec09d34a0978dca9f1bb9d827b001022ca4efafc751822813b643f4ff9"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.51/opencode-linux-x64.tar.gz"
      sha256 "9b09b4cd20beed42c3308267f1f663f1f79c76a7e6e0e9bdfc8d05536430628e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
