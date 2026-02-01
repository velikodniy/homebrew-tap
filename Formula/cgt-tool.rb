# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.11.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.2/cgt-tool-macos-aarch64"
      sha256 "aa4eaf220715816c20890f04bbbcdcfe0be1a3f3fa3eeb66227576c739d61273"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.2/cgt-tool-macos-x86_64"
      sha256 "74de576a714a95a8a6f00203a20fe2a19e7cb8dd693e48464084034be269b307"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.2/cgt-tool-linux-aarch64"
      sha256 "ad6cec218915a2f387fca3b4559d42ef4dbf97de26f930ca458877f204ecfa9a"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.2/cgt-tool-linux-x86_64"
      sha256 "4786c8dc688294d2488b328bad0338d96622305d9a40bd57b69202b58de5f3cc"
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
