# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.14.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.0/cgt-tool-macos-aarch64"
      sha256 "c74c6a96562f0ca88c4262801a1bc69fc97215deb5a350f8ee50039596f404a3"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.0/cgt-tool-macos-x86_64"
      sha256 "f5ca59c40ccc23342ae788fb96668d635296fdab7bb40a8381d5af25a4ccdac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.0/cgt-tool-linux-aarch64"
      sha256 "3e98366e34f4a3fb48b5fde4a8a7106cef55be73882ee148700debf77f1f8f27"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.0/cgt-tool-linux-x86_64"
      sha256 "01b2e12c8012a2ee6553b97206849e469ce145f7426663a3a920ea80778cfb04"
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
