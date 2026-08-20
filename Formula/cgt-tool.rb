# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.0/cgt-tool-macos-aarch64"
      sha256 "ed74334674d2507dd284f6cc1b042c1d423fa87a813b925ed536b80e024579ae"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.0/cgt-tool-macos-x86_64"
      sha256 "4ec0ec19645f587c6a4b519410c658d5111406dca26bf81285a3c499c912506f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.0/cgt-tool-linux-aarch64"
      sha256 "c2ff1cb29da556dd536418c2854fe3d9760e887314be904718a2cfcb8f4c4db8"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.16.0/cgt-tool-linux-x86_64"
      sha256 "395b74c1725309b684c3c9c6b6f4324c524e1f5bb55411f1374488fc95a66e54"
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
