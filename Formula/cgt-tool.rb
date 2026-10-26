# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.2/cgt-tool-macos-aarch64"
      sha256 "e826bf5f0027568f4ae09296918c344e4ff488f3c7648986e09f1e7c3cd26418"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.2/cgt-tool-macos-x86_64"
      sha256 "e7f7893fa70404c4563a9f2df9c361c528136cdd717c3d5c5e715cab0fbb44d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.2/cgt-tool-linux-aarch64"
      sha256 "50368ab96b5f4d4d9ea76b972cf989281e7761714995772cdfd64489aecd0217"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.2/cgt-tool-linux-x86_64"
      sha256 "e5903049f960651ea71dd7121a7c7e4bb1c1a6997462662c304fa5015a2af350"
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
