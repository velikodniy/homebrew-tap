# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.20/opencode-darwin-arm64.zip"
      sha256 "dc42114bb7a312e0c61c71456fed00d1e6d8b7647d279233125090804dc0218b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.20/opencode-darwin-x64.zip"
      sha256 "ffd981d3c65a2787aa14f4d48317f1d44fc14f73907090fdb7bd55239fea11c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.20/opencode-linux-arm64.tar.gz"
      sha256 "0a41572e83a896eb008683589dfe09e17b941d06122608510f3e5f16d86d9afc"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.20/opencode-linux-x64.tar.gz"
      sha256 "b7100c0ad0980fba25d595123b4219a6fdc1fbd456dcb64859236741e199c564"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
