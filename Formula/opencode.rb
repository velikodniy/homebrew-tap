# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.28/opencode-darwin-arm64.zip"
      sha256 "a0a97741cd6b27fb5558942b2d56460c85b76d3a03ad39690a3f928545c31cc3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.28/opencode-darwin-x64.zip"
      sha256 "06c2c3098f8332a82c1c1e1e9df56d145a6df3438e41e2ded4ea548467ae5813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.28/opencode-linux-arm64.tar.gz"
      sha256 "3c26ac279049b1343296f127c56b77e70178186d21bba003610d493ee8209f15"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.28/opencode-linux-x64.tar.gz"
      sha256 "3f9a7139612d4421a46408d46eeed27bd958bdbe7f43514cd5e5a10ad1540e5b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
