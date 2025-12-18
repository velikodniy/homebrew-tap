# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  version "0.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.5.0/cgt-tool-macos-aarch64"
      sha256 "0de24350329ad3e346dc8a3e7bd9ee89989d2057c4b465db3121d2481a11ea8a"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.5.0/cgt-tool-macos-x86_64"
      sha256 "16044e03ee5d4a1d0873a1bdde01c020d17c5c7a0f47fa1c893eb305371963fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.5.0/cgt-tool-linux-aarch64"
      sha256 "9fd3d8bc58973cfd8d9a0e55b04c370b96c963eed33a9999b821237c3847fb67"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.5.0/cgt-tool-linux-x86_64"
      sha256 "d5efa957e59816f2f330398b5982a9ec5cf74566c9e75008b267081a2b13fc24"
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
