# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.43/opencode-darwin-arm64.zip"
      sha256 "7dcbae5709f9a29c9ec0553223658ecf029ac606de32fc91490089c41b51e3ce"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.43/opencode-darwin-x64.zip"
      sha256 "73f1462470e79a84267e5fadd58b87a73454ff16f37f6e69252e164555ddf77f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.43/opencode-linux-arm64.tar.gz"
      sha256 "ccd6b7b80f9cfb2c0d74c8b410d6272c4ab893e5527ffae795addc5baa01122d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.43/opencode-linux-x64.tar.gz"
      sha256 "c1a8b6896752e2ce9678ee5b812e119867edb25a054495358dd63cea85f69ca3"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
