# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.20/opencode-darwin-arm64.zip"
      sha256 "778a10465683ef705006c68e469b7d94c52efd400a768aeb2d35e2f1f6a8f1f6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.20/opencode-darwin-x64.zip"
      sha256 "622b10f83b2b3548ce0a2ac4032ae47491fd9d15a4933746250a7f8191c6799d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.20/opencode-linux-arm64.tar.gz"
      sha256 "06a545496b9bf2cbb39098f3403a26db2e325abe02c97b6738273ff25aa96946"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.20/opencode-linux-x64.tar.gz"
      sha256 "3f536da7189d502f1e5d3126a480609907aed96356613870901547eaeed1d66b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
