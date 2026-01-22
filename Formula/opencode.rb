# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.30/opencode-darwin-arm64.zip"
      sha256 "583c9dfa56f67a75e8f84b752369a45a5d50030997440844cfe5d2cc7e79a122"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.30/opencode-darwin-x64.zip"
      sha256 "ead830c12394850ddf518571a37635ed10fbe36ab6796727d2ee4179e098243e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.30/opencode-linux-arm64.tar.gz"
      sha256 "f80d48fc91844a87c0c3eb0ef4354c4396900e7ec8ebd4a9c5e442bd3ecc1078"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.30/opencode-linux-x64.tar.gz"
      sha256 "e079627e7c3aca9a7b9aaf7570b94d11562eea5488bd984c14c1fd827c7d5fb2"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
