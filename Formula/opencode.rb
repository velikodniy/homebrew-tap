# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.41/opencode-darwin-arm64.zip"
      sha256 "79560a5a3f1cf96538b37ec78ae3f92326ca536a7bb5a2f6e8c1e7e9a2b6fed2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.41/opencode-darwin-x64.zip"
      sha256 "fe47e128ce720d69441f58b0d545fd96c50928317205622e7a87d961ee6d1dca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.41/opencode-linux-arm64.tar.gz"
      sha256 "2ffa63bb6115d7aa193cb1f6fa766eb79e1b399776871a624935a752e4461105"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.41/opencode-linux-x64.tar.gz"
      sha256 "d27d3c85183a7bd2df4506484a2f508d1897962063b7ccc8466705b493963dc5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
