# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.7.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-macos-aarch64"
      sha256 "8f743f178761165799c6eaf29c391a02ef1d802e9a71193b224e22b3957974dc"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-macos-x86_64"
      sha256 "d210957321aba6fb512cae0f33375c21a41efcef3fa1a11cc43ce2d0a0f4a51b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-linux-aarch64"
      sha256 "ee4b58044b2c41c5fc784af0851bacbfd1da19adae6e59f37d20cfe22499fc08"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.2/cgt-tool-linux-x86_64"
      sha256 "ac8f3cb5271480495c5a09b98ec61d7ad4f882ff38baeebde5e56aa31bc3db54"
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
