# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.0/cgt-tool-macos-aarch64"
      sha256 "5b9a220214bb3eff0e866c01c18870f34635a735daa581f58dbbd1e427937200"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.0/cgt-tool-macos-x86_64"
      sha256 "e06882af223831217c0df7336d084b8b33d1ac635a4f80778a7eac3a79f4090d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.0/cgt-tool-linux-aarch64"
      sha256 "cd68e2d8d2d511ea3d355c50093af0d7dacbfeb1f78d38e09127800d2f4f09aa"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.0/cgt-tool-linux-x86_64"
      sha256 "ff292af30c8b05360cb3e744cabcb651e5976e258f0763f4a60412a6c10f18e9"
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
