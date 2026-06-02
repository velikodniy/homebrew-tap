# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.4-6410134369468416/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "7cfff69ed69e268af076faf857f10bb2879e3e0948270a49ca3d431fe746c1b3"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.4-6410134369468416/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "f1251c12138a5c5f04ef9fd1ae1443e445588b852c6e07a24704b7dafe69a62b"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.4-6410134369468416/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f226b595a6c643e58b49cfefd5f9d70d9f395d64f0d102bf3379458e481c3b5e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.4-6410134369468416/linux-x64/cli_linux_x64.tar.gz"
      sha256 "e63909ae717aceaa0a482de053c23836e77b5ae57b22ee6d445e9833f1e4a7bd"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
