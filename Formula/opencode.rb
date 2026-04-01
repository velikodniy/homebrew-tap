# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.13/opencode-darwin-arm64.zip"
      sha256 "cbbdbfa19d19f95538909b0af2a49f8bae70ba4f5b6f40d17c6ebb9d19f23f33"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.13/opencode-darwin-x64.zip"
      sha256 "8fd84abb682ac0ece726e65a3db6bdd7baa0143c968425294283bee1f058bb37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.13/opencode-linux-arm64.tar.gz"
      sha256 "af9133ceb5d9957265d730456554aa7c38aabc8ff3827394a23d3feac8fe7ef2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.13/opencode-linux-x64.tar.gz"
      sha256 "08ac2a91d8f071b0e5bb7ec08665c7f944bcba00a6fe02bb66338d74ad067ac5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
