# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.4/opencode-darwin-arm64.zip"
      sha256 "7a26d5427ff33e4f5bc942ad923a3b5ce3c88c6705fdecca9c2e27b59365594a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.4/opencode-darwin-x64.zip"
      sha256 "8d2023687e415c5ef2c70c7a790e5e2d6957bf1d195925d154e70b5fc15e999b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.4/opencode-linux-arm64.tar.gz"
      sha256 "5cb32d53238a205a4ad71f70be8d669aaf460f55121ebc16ff9d12909609dd0b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.4/opencode-linux-x64.tar.gz"
      sha256 "a2ece9181aab3817a6b59fa390b6d459b187e3ec917be802ecbca88b632c5ef9"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
