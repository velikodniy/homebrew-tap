# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.53/opencode-darwin-arm64.zip"
      sha256 "5e9cc90f4d84de145b4099c7666b0f0782b19e5196795181cac36be33dbc5da9"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.53/opencode-darwin-x64.zip"
      sha256 "26d324a9e7744db0cf2bdbb90c5f6cbf5c0e60ec94338a9829b3410b2f6f37f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.53/opencode-linux-arm64.tar.gz"
      sha256 "7b70fb3408cbf52c05cb4fcb6a30ba7cc0e798c97e7ccca873a54ad04e4de06e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.53/opencode-linux-x64.tar.gz"
      sha256 "2c922540fb8e0a4cd7e15ae4b6eb7bc1f69dbe7683d45ac7056059ee832e2ad3"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
