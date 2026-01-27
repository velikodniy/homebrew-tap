# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.9.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.1/cgt-tool-macos-aarch64"
      sha256 "4b1aed3197c89071d1b09601c82f79a87798b1c05986672ceb683ea273987131"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.1/cgt-tool-macos-x86_64"
      sha256 "68703eef5b5ad1f95e8eff10eda8f45113391301fba083d0a9ef31c8142ed9cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.1/cgt-tool-linux-aarch64"
      sha256 "73c847069ba168e1da043d56d5e387b867992ca849dceb2794f28d50956b07c6"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.9.1/cgt-tool-linux-x86_64"
      sha256 "74fbb20d6853ecaa17ff7583fae2d008296757cd4c9f568276970db5b6f264db"
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
