# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.10/opencode-darwin-arm64.zip"
      sha256 "dee9e5d8b09760370018d4e70066d97e12a525cb62a510878ae0fd99988d497b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.10/opencode-darwin-x64.zip"
      sha256 "2c92376bca9fa2fb2ebd00bc3c8ea709584c54fb118baf9bcb9f611309a28f11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.10/opencode-linux-arm64.tar.gz"
      sha256 "cfd8eac5a40096b9209db23f3a336db1e956d5eea68b0f183de3f491f0d874f5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.10/opencode-linux-x64.tar.gz"
      sha256 "ac24ff27647b57c44e4b0d00ffe4d9e9db32f148b6886b39a83555604fb382cd"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
