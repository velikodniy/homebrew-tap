# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.29/opencode-darwin-arm64.zip"
      sha256 "fe764f7f360c584a83e18dd5f23fb1a6b2725f5ee8854b0252fe558f7798e946"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.29/opencode-darwin-x64.zip"
      sha256 "9858853e7bacdbbd22c2d70c377e009dc4b354dd04f5588705411e7afb89fd2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.29/opencode-linux-arm64.tar.gz"
      sha256 "70baf769395ca4e7a68924026530c390eace194f3b7e4919d4efcb2aa2eed3c0"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.29/opencode-linux-x64.tar.gz"
      sha256 "ea800b7ff56226b70952126c9fc1e2517ca4c4b5682fd9d3f9e87449697a1194"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
