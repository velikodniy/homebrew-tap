# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.3/opencode-darwin-arm64.zip"
      sha256 "946f62b155638b911144b7bef520ee4a6442f696297907873463bca3524e40ef"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.3/opencode-darwin-x64.zip"
      sha256 "4ea147867ba19e4ec03559df557811f1674f40788aea4d10326dc563b7667c6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.3/opencode-linux-arm64.tar.gz"
      sha256 "da0a631174eba380b2a1d51f9d364fa3812da433e72743c72471d4b5da59c69d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.3/opencode-linux-x64.tar.gz"
      sha256 "60f27b2679f00a511b6539f97e02448afaf58d9c66e2448285ea0c517ca84583"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
