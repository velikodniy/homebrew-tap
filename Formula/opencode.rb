# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.27/opencode-darwin-arm64.zip"
      sha256 "6d3e508277c5673bf923d91177e7fc4a66ad859ab6ae5333b9b68822dfcad56c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.27/opencode-darwin-x64.zip"
      sha256 "7817434300b2e266902436942e251690fc1552becdbbe58aa14f81e3f57b0d9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.27/opencode-linux-arm64.tar.gz"
      sha256 "082b35aa7479dda28dc63e3aaa68ad2dfeac69e98d16e922eb99bf06bd3b0c11"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.27/opencode-linux-x64.tar.gz"
      sha256 "3943dcda70c53bf1efffddb5dd1da78ce0b9eae6ab2f5a16cd14bd8c873f385c"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
