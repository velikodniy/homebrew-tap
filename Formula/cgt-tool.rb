# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.12.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.12.0/cgt-tool-macos-aarch64"
      sha256 "8dac7c8bebea096bfcce9c46f689b4fa06b8a6e3b207534b32bc7fff308e22b6"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.12.0/cgt-tool-macos-x86_64"
      sha256 "58505444c6c9c055010661e9c782d7e8677b65ac7cec5b40a56ec0dbc4378348"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.12.0/cgt-tool-linux-aarch64"
      sha256 "842aa923889eae6ce307eaab886ac19ad380411ed989022d4664f18b7972628d"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.12.0/cgt-tool-linux-x86_64"
      sha256 "75c34ea9d010b9d62021022cbb3e26caf88367d68365546898fd7901ec7abba6"
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
