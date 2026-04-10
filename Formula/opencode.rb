# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.3/opencode-darwin-arm64.zip"
      sha256 "d085c072087fa1cf076058ae28785a31a9368e0f3c42985ea8c558036fcb9b0c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.3/opencode-darwin-x64.zip"
      sha256 "1431028e324dcdd2322e5aa710444a52c6de74d1a382f8082a4ad12fdae0768f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.3/opencode-linux-arm64.tar.gz"
      sha256 "4cbf32f4c31da7dae14712b65aadbce6acfa1a7a85bee986a2ce4eaaed4eb5c8"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.3/opencode-linux-x64.tar.gz"
      sha256 "34d503ebb029853293be6fd4d441bbb2dbb03919bfa4525e88b1ca55d68f3e17"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
