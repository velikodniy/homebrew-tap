# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.2/cgt-tool-macos-aarch64"
      sha256 "efbc2cd2d7c06f256fb222948cdf9e733918387066e2cb2e38d288141e39bbe5"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.2/cgt-tool-macos-x86_64"
      sha256 "374b3f4ca7ffea05af4d7dc9faa48907b5b4e183d4455593d828d6590482199d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.2/cgt-tool-linux-aarch64"
      sha256 "de622bc62a09b1e47aa442d95ae4a1fa1649ec5a6513870b5a699f3293ab0032"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.2/cgt-tool-linux-x86_64"
      sha256 "c35f2e6dddb295bf94c4f260fdcf46ab2cb1cb45ae385e2f3f87dac92d68b952"
    end
  end

  def install
    binary = Dir["cgt-tool-*"]&.first
    odie "binary not found" unless binary
    bin.install binary => "cgt-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cgt-tool --version")
  end
end
