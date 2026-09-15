# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.31/opencode-darwin-arm64.zip"
      sha256 "caf7f31fa1aec2353ea859d4ef9ab824c6273d941b016e88d51193fa3028d34e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.31/opencode-darwin-x64.zip"
      sha256 "f8510eaf400f07c3a2014e3a517e3650c705bcd6ac3e6740351b723ee685042f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.31/opencode-linux-arm64.tar.gz"
      sha256 "d4e332f46b227448582c0d9fc75f6f826dfe95c9f751bc2011fc4d937a042be6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.31/opencode-linux-x64.tar.gz"
      sha256 "e9312be75ed803b7415fc2aeabda1f4fe938912a39673762dc0c38c0e11ebde4"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
