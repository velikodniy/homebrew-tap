# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.1/cgt-tool-macos-aarch64"
      sha256 "e5e73931bebdd9a30cf6354d0b0c78388bdf56a30046fb8de5181bef008f3334"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.1/cgt-tool-macos-x86_64"
      sha256 "60b0fdfb1af09eb641fa9ee2c30186f4409616b046c5bcb7dcb5f014bd34548a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.1/cgt-tool-linux-aarch64"
      sha256 "f40db961fe1c84fc5e415d208c443b791b3b207ffa61a5364693226d9e93fe6b"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.1/cgt-tool-linux-x86_64"
      sha256 "6c75ba11a07bcb3acfa1e6be69d4f4a44ff6c1d6efd03b49e2c448ce1cbc50e8"
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
