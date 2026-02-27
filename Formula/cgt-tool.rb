# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.13.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.0/cgt-tool-macos-aarch64"
      sha256 "084866f5b9e64aa681c2cfe25a0bed0b40183a4887ff02ce86f1957c67658aac"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.0/cgt-tool-macos-x86_64"
      sha256 "33263d7a14cb6ade298fb3eb615a30f43416d895d5d7478af79d93d6d1f17f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.0/cgt-tool-linux-aarch64"
      sha256 "3dd1fcd85bd104e067653c633d771568ed429fa239a3831baa8a06872204495b"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.0/cgt-tool-linux-x86_64"
      sha256 "be3d729c38e096c4fd7b31e04d5d182b2bc424249950d332338e46235dacc273"
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
