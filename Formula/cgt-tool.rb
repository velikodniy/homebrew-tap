# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-macos-aarch64"
      sha256 "5c6ee263f1284928de1709ee44dd7580262168be0d34240557d978531562ce70"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-macos-x86_64"
      sha256 "b51b47e140c6f81560271752db7d1627d8662d3afd1375fd5a9a04b4380f6824"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-linux-aarch64"
      sha256 "5557f55fe1d619c760d6929ddb006d2ef1e90aeb4f33159d42ae728c921986d0"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-linux-x86_64"
      sha256 "530fff75c64e7810a359f659f72be0b11083773756ce3efda9355e4249acb6a1"
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
