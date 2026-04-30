# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.30/opencode-darwin-arm64.zip"
      sha256 "0369b45f100be4f025c688360db1b28ff8bebfc81d6cb488ce271c4e42dd16cb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.30/opencode-darwin-x64.zip"
      sha256 "77b3ede3fa981a8c42649969917fc652800dbb79286c9c19220cad3f3d7c81e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.30/opencode-linux-arm64.tar.gz"
      sha256 "ca86ae22b1db986650eac4e3017539e15570569689fb6724cb8f33c0e4cdf668"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.30/opencode-linux-x64.tar.gz"
      sha256 "13b2dd32c5549f7b031e8bb67fb8d6e8d87aa9e07bd6f0017620836f1fb7cdce"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
