# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.14.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.1/cgt-tool-macos-aarch64"
      sha256 "1fe09ec2e139a328c65d23e976d7360cf9ea8494c5646407e65312f693fa4413"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.1/cgt-tool-macos-x86_64"
      sha256 "f9dc5d199e80fc5d180330f24ca73f1d47c91edec8914c4cf637d40ee50dafbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.1/cgt-tool-linux-aarch64"
      sha256 "2cca846ac2f4016aee7a1d5471700d40aed8f4624ad76be3a57dd140623f2f96"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.14.1/cgt-tool-linux-x86_64"
      sha256 "ab3a4d8d1b102108b1dec49bc74ea87e5c2ae005866b2916d664587778edf040"
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
