# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.11.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.1/cgt-tool-macos-aarch64"
      sha256 "9cae407276b4b2ae7792c2fdaaa320edeba2576f4938b6505abfcac38e9a4331"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.1/cgt-tool-macos-x86_64"
      sha256 "8ebbe0fc4feed076054997f8cfa24e98ee635bc1a3e5bd6606ed8b6bac02bca2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.1/cgt-tool-linux-aarch64"
      sha256 "6b5edd0887da4bd8744b03d6891d0ed1e504009d401a89aa46752b033cff4461"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.1/cgt-tool-linux-x86_64"
      sha256 "d98ce2d50b8ff70fd1b2ae900c7e505b481bbce4f70b7cdb643563f6da951042"
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
