# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.4.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.4.0/cgt-tool-macos-aarch64"
      sha256 "7e4bba9f9797087aed9ded44d25a9f45253a43ce1455fb4a35e1c9de40cc0753"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.4.0/cgt-tool-macos-x86_64"
      sha256 "39d629f8cc4359889a62ba25622611f236bfdfc42e4507237942f0867999c3ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.4.0/cgt-tool-linux-aarch64"
      sha256 "78a0d1a1fb79d51c8ca3c999f8d3659a76b699416df73af716b3077d1616fe9e"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.4.0/cgt-tool-linux-x86_64"
      sha256 "fa00db2b23b22fdbf3b248cbc92c76475eaa13383f895c99357bdef333faddb0"
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
