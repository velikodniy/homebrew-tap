# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.12/opencode-darwin-arm64.zip"
      sha256 "aa19412dd20fc49416742440077fab60944096650072b0ce08e87a16183978e1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.12/opencode-darwin-x64.zip"
      sha256 "7aef6a818713b79b7d57d4934b9227a4d81f7887f6db49214fb0416aef0364ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.12/opencode-linux-arm64.tar.gz"
      sha256 "82b9c5157b7ae10acb5feacedb07c90a9b6dce94efb3b7060c863b073a622ad0"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.12/opencode-linux-x64.tar.gz"
      sha256 "7a2e3b706306b04fbf5353b67d916b0801fcda565f9ee021bea2a77207961452"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
