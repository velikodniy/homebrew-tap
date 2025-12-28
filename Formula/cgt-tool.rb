# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.1/cgt-tool-macos-aarch64"
      sha256 "01926508950b3dd4a875e3133efc4f3e733b0524b1cbaa1451aab60ae7852306"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.1/cgt-tool-macos-x86_64"
      sha256 "eea28b0d8e0330d52575dd59e9f8ff8e0544b05c47c20de9a57a14f3c78f5dda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.1/cgt-tool-linux-aarch64"
      sha256 "b76772170366e4847d5401f72226a0bfc4142c4790b36e290f740e201a7798df"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.1/cgt-tool-linux-x86_64"
      sha256 "4b14b8cd9f1f9991d4dadd836f6f88755430939ed4cba55d300bc6fee24549ae"
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
