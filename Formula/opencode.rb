# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.48/opencode-darwin-arm64.zip"
      sha256 "a84141379dd0c7a2b111bf96db6e8bcf6dc4382bcf58534813239dd362182aa5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.48/opencode-darwin-x64.zip"
      sha256 "6309fdbbd9144e4b337d5376c3942480d525b4c71818653e3c18bb2e0335c4bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.48/opencode-linux-arm64.tar.gz"
      sha256 "f4c17d49b3dbeca04b9e8eb780259cb12e6a0befe9b8a699816ae00a52161eb5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.48/opencode-linux-x64.tar.gz"
      sha256 "7524880c32215434e08fc2ea1a5acabe3491745c8a8752236830d07fc81e80bc"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
