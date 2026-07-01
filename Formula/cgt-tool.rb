# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.15.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.1/cgt-tool-macos-aarch64"
      sha256 "124b6ab28cffe92fca067b0787d83aea09725d77fe971d04c256144fa8f76e4b"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.1/cgt-tool-macos-x86_64"
      sha256 "5d82e2d245f97e321c3f27bfd101a6375e2e78d47b1f5b09917d3fb79d06dfef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.1/cgt-tool-linux-aarch64"
      sha256 "413d096915cc2961276f605d717d0583d5afbe801ec79f843cb72215dc57fa4b"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.1/cgt-tool-linux-x86_64"
      sha256 "716d417636801b449e97bf4b8d123b9da51bb6b15befc3c907d67259489bd24e"
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
