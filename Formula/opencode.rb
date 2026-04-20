# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.18/opencode-darwin-arm64.zip"
      sha256 "ddabf8d17deb42eb6389395b399ef514aa4684a47793ffb970af0961494ef9e0"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.18/opencode-darwin-x64.zip"
      sha256 "ece4ca6b9060c73910e48844501acac20e1a78cc589d965fd998077751be5dbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.18/opencode-linux-arm64.tar.gz"
      sha256 "8b743b66286b6170dadff3a4383966c6dec312e1b8a0f0f1c496006ccbbfa959"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.18/opencode-linux-x64.tar.gz"
      sha256 "1f1b67377b898f477692879318232fae56dbcb9cff9358cb16a60f9580f475a7"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
