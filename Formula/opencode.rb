# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.13/opencode-darwin-arm64.zip"
      sha256 "be369a38d15a22e83fad34874d1bc7ddead8084e07df292b28d079287d54ab0c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.13/opencode-darwin-x64.zip"
      sha256 "e0da1f0c011daa8717479014968d7ec8ce672801a8ba4710f49471dc9fbb2c7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.13/opencode-linux-arm64.tar.gz"
      sha256 "7a0e5da2427c7804314fe0f87b74b4408467f94e3b8b1a61ba25a1d71fe0b4d2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.13/opencode-linux-x64.tar.gz"
      sha256 "51785a07c009f27c5125a5235c5a0ff78433dace07f73fbc44eb672ead4b3d79"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
