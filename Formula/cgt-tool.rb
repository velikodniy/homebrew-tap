# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.13.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.1/cgt-tool-macos-aarch64"
      sha256 "a10ba8150482e435e8f2c33693b45b002a37eb321f1e0d8569c5234ee0f8c24c"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.1/cgt-tool-macos-x86_64"
      sha256 "d151b2c5ffbd2db1a7169fa8206abbcbda8989a361e73b5f5bff8c948b76d779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.1/cgt-tool-linux-aarch64"
      sha256 "349c967bdf6a22150abfcdb00db7cc9c0536cac70f2f7011f309bf6020068f75"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.13.1/cgt-tool-linux-x86_64"
      sha256 "46f61ec34575a5a547b4125ba7af16c50d7bf9edcb33d27f4300e5dcd25d94a3"
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
