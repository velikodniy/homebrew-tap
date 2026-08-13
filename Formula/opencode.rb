# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.18/opencode-darwin-arm64.zip"
      sha256 "7d668bf26496fec8686d4e51ebb1ac2bd2e393f0c1620aa696c4c242a9e5806a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.18/opencode-darwin-x64.zip"
      sha256 "9581bd7683a7528456179fb11e3377d9ef568e10a935611a2c6722e349454d83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.18/opencode-linux-arm64.tar.gz"
      sha256 "dcb1b5ec5687b43f87749560021f9203f3809e0ce5ae44ff9be8ae17083fe4ba"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.18/opencode-linux-x64.tar.gz"
      sha256 "0cddc222418b8553669905a8980c0cda7088f00da24d83d6ac76b01c9fdb2aaf"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
