# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.17/opencode-darwin-arm64.zip"
      sha256 "144bed914e8cc004ba4f79fd01d61f1ad121a6417e13ef97dc6fe8665c8903bb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.17/opencode-darwin-x64.zip"
      sha256 "554b6101026c640c4e5f6d4f4f7738d8b2840155eca75b93ac0bad9d5c756c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.17/opencode-linux-arm64.tar.gz"
      sha256 "345293ed29c703cf3c4b0e696db50c3586c973a4d4ff90f1db5b6cbbbb2cee4b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.17/opencode-linux-x64.tar.gz"
      sha256 "19e540840cfd04afebed92cfe67dce0cd6c425ed5f729ef946e8071f776205a9"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
