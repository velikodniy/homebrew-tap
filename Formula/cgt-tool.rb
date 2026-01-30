# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.11.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.0/cgt-tool-macos-aarch64"
      sha256 "9b10385b6969386942bbe461b3c6c22af3c86bcfe5237d48c5d77e63849be174"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.0/cgt-tool-macos-x86_64"
      sha256 "0dc4afb338187e3a60dbab9d36a40de49dc0b31dbbc8088c006990d52a5eafe8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.0/cgt-tool-linux-aarch64"
      sha256 "da5af7da268d39a6ba57410f6c1089ebf9b91aff1984158c969bef1169a62218"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.11.0/cgt-tool-linux-x86_64"
      sha256 "107f8b21b863a91c8e27d5f3866763c5210267bfff3fc660c56d7502dc88290c"
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
