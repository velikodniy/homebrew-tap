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
      sha256 "43cc0235011339e193e83ecdb1185e261a6680042456884a4ecf4c844aeb7368"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-macos-x86_64"
      sha256 "781b43fe9d444dd20e154eac6c46d774beb5668e42eea3af09434a0a1581b661"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-linux-aarch64"
      sha256 "1baeed648548d108a071a44b59686ac5e50a4a5abb627954bfc6139e64ca0d00"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.7.3/cgt-tool-linux-x86_64"
      sha256 "9df6df81aae9759e9c5365b0a58ad2f2eca0a0dd30a09721e6f518b26da5b46d"
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
