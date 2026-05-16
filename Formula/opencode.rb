# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.0/opencode-darwin-arm64.zip"
      sha256 "4f072f8d808167c4e72051cae04ae962c3771538b31ea39e57db9617b4154d2f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.0/opencode-darwin-x64.zip"
      sha256 "e0d7f437118544e5c75201b8f7eacbabd485fcdcfaec7a8cec6257c4de9abaaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.0/opencode-linux-arm64.tar.gz"
      sha256 "6ec553a7803783dfc824080d03aaab20dfad701f9ae7e8c8ab250e6215dd4539"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.0/opencode-linux-x64.tar.gz"
      sha256 "daa8b8b59d96cf3b0ce72285c1c3b39e06e996331ba7f162a2991cfbfe2116b4"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
