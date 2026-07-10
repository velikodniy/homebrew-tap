# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.18/opencode-darwin-arm64.zip"
      sha256 "24327f89c103526c0518fc9b797767f318ab85ef3cee8636e722d6138f33aa3d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.18/opencode-darwin-x64.zip"
      sha256 "cebf209aad2c0bd998fbac3f8dd1b45eef35da1af18cd698e78b111b73c5fbb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.18/opencode-linux-arm64.tar.gz"
      sha256 "db9b53eae485da969a0a855bca465f9901dd84676384f724f320e3ccc5a9b107"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.18/opencode-linux-x64.tar.gz"
      sha256 "e149d32ee5667c0cd5fb84d0bf8393b312e93782eeb4d74d29bbb0392de7133c"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
