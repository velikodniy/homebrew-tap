# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.1.0/cgt-tool-macos-aarch64"
      sha256 "6fe9661adce4dea8d7a4de4da69521ba742e4603d88f0e910d89f34b5c21111f"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.1.0/cgt-tool-macos-x86_64"
      sha256 "65e259a1d3935e221c516df8c9fa312894108cc36324e0cf62da6462e398742e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.1.0/cgt-tool-linux-aarch64"
      sha256 "6004e20ce30786a80a2fb9edfd654129f51ba5b4b6e970dc8569ce825b9ac9ae"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.1.0/cgt-tool-linux-x86_64"
      sha256 "7f75a651ff628497044c0aef8341ae1e07397f12ea371b6ad48e9b49a7245447"
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
