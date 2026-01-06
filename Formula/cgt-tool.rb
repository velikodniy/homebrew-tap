# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.8.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.8.0/cgt-tool-macos-aarch64"
      sha256 "7ebd305b846f4f0af2a15cf89735ca2f6b4800c08c64c910e1b4c5a03dc33640"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.8.0/cgt-tool-macos-x86_64"
      sha256 "3304eefecfdf50a44a845303f1bea8bb7a99229cd15e7f49610c7f1ce020e101"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.8.0/cgt-tool-linux-aarch64"
      sha256 "e9c25caf8722be5d8cbfd98b7dd29f8f91926d0448f275af69b37ae7f2b6399b"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.8.0/cgt-tool-linux-x86_64"
      sha256 "d15691bf5396de47792969fc1dfe8847badcf113dac5d83d375922ce5dde10de"
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
