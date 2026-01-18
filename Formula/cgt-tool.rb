# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.9.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.0/cgt-tool-macos-aarch64"
      sha256 "c13be25c6a98b0f01ae59a705404e7bc3f5853943bdc5e6159128dd8f58e0b3c"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.0/cgt-tool-macos-x86_64"
      sha256 "1be381d84ec2a37c43c0d1d75e11cb84bc38b49342f4d7db98006b4e73d29551"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.0/cgt-tool-linux-aarch64"
      sha256 "4e6c824d73296969fba3f4a37cb932c8092eb0940c67ae896175c42ddeaf49f2"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.0/cgt-tool-linux-x86_64"
      sha256 "b10e95fb4109afaa9e7313c3ee6f856e3ec3996d9c2891c03f2b42fef93ed877"
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
