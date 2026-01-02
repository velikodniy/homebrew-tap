# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.4/cgt-tool-macos-aarch64"
      sha256 "2c60194938cc3c6592bcef83a730d219d0fd388e07e6cd892fe6db5f7e2897b4"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.4/cgt-tool-macos-x86_64"
      sha256 "3ff3841056782ae7b4de94e974ad45d6d384598aa74390dcae5817f5d1d7e7ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.4/cgt-tool-linux-aarch64"
      sha256 "6f84d4f39a14a7c16ccad4368b71ae973b8776102977c86b74568a8d107059bc"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.4/cgt-tool-linux-x86_64"
      sha256 "4526d39b4d5b09931b6bf1668260a155561d79bcb126da74a00efdd96921babf"
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
