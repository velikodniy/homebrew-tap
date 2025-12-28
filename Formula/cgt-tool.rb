# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-macos-aarch64"
      sha256 "4e17f3cec332a86a4f7123d1fbb9c0095b50c16c0047aeeff97a4135059fad5a"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-macos-x86_64"
      sha256 "0ba72b3ab81772368e24bd6ed57f4fcfe014038efaad7b7cfe15fb0d825fb5da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-linux-aarch64"
      sha256 "058f042c5b2d5943bb3e8aaaeec66efe36f6fde51679bdb0eadf257175714979"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-linux-x86_64"
      sha256 "7b30e85e08b818b5287bc6d3e77d95f69d00c7fe8a06d00d4214298da82ef0da"
    end
  end

  def install
    binary = Dir["cgt-tool-*"]&.first
    odie "binary not found" unless binary
    bin.install binary => "cgt-tool"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/cgt-tool --version")
  end
end
