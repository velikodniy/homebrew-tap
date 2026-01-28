# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.10.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.10.0/cgt-tool-macos-aarch64"
      sha256 "5831dfc0255a9905b68c396aa5cba8b51a244ee91cd1602a02a633f02c0a1473"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.10.0/cgt-tool-macos-x86_64"
      sha256 "9fc9267e07ac836051310a1bd9fde1dcd8311085e4522dd61263005d926297d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.10.0/cgt-tool-linux-aarch64"
      sha256 "28d7698bb7c9faf0103dd78179b65607ce8e4f4680290d23b868b1fc2fefc39c"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.10.0/cgt-tool-linux-x86_64"
      sha256 "74d5701ca45db7610ca56b7e878bd24f8d887c9d01cd67ebf462d666420d624a"
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
