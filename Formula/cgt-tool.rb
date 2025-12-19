# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.0/cgt-tool-macos-aarch64"
      sha256 "1b9d86c7c9ac405c0185c2f82a49e50150dcda448ee1cf547af6bc0d836914bb"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.0/cgt-tool-macos-x86_64"
      sha256 "0a167f89bdfed37fd7ebf7bbbd035f03c8aba000ba8167b3e998d27257ac6e5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.0/cgt-tool-linux-aarch64"
      sha256 "a0b0b1f92a080beab8a6272a04517bc707c4d392f515450ffb053d410e43c081"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.0/cgt-tool-linux-x86_64"
      sha256 "b250fa590cda9745f4b2c66dd93555a01893b17ac8c3ef114deebb6a8f2af457"
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
