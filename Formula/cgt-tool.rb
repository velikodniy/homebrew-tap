# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.6.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.6.0/cgt-tool-macos-aarch64"
      sha256 "748636e4361eb26c16e269e8982181171ddf0e27e24903024d71b6f3cecbb4d6"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.6.0/cgt-tool-macos-x86_64"
      sha256 "7090f9116eb3fe3733f51097363dce06ae53f85c2a93313518ae0cc116e31d02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.6.0/cgt-tool-linux-aarch64"
      sha256 "3d526997e0b92d678f46b7371d51210233b676a68b22ddeddb8fd92a07fbc9fd"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.6.0/cgt-tool-linux-x86_64"
      sha256 "dd21aaf3933df96f95161ec7b1e20b38842b84912ee0ca31027544716f5dbfec"
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
