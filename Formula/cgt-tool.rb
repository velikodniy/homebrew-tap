# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.15.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.0/cgt-tool-macos-aarch64"
      sha256 "6b33cc7f7dcfdfb50658526ee02ef3d1636de3443197a1b141a6eb10ea4e525d"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.0/cgt-tool-macos-x86_64"
      sha256 "65a63d08bc633bb5690aa26be625e61f5cf88e5ceb9f88f1db3d21cb998aaf65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.0/cgt-tool-linux-aarch64"
      sha256 "82f28e901abc7a940102f60e65c7186b11f7867a8976597592fafcdea50cc4fd"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.0/cgt-tool-linux-x86_64"
      sha256 "5a4315688603a6b3cbe5da44d9a9ee01c7dad48b5d8eb43985c857128bbb8e02"
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
