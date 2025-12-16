# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.3.0/cgt-tool-macos-aarch64"
      sha256 "3525d05ead0225698fcae4d4828c434116a7c610083e97afdc9450bca32bf9b8"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.3.0/cgt-tool-macos-x86_64"
      sha256 "94a3fc3ce3870a5266eb2606358597d23a5588e4873ad88d99db5ad845dfb175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.3.0/cgt-tool-linux-aarch64"
      sha256 "705666af9271f1e5ea17e9ed33bccc4dbe5b3d9c5350680b74ba9953d2c26658"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.3.0/cgt-tool-linux-x86_64"
      sha256 "48dc911352cdd79dc9f9572eb4f59991c0397c087c45f0d6b8cd855ddcaef20b"
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
