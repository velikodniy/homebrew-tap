# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.1-6269367663591424/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "83333dd7131bebcce2dfa5f94722efce442d7b67e9ab9b240c91f100a26d4675"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.1-6269367663591424/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "f04855a9d14a9f29476b2343b5f827e897b187a7adce065201fef15c5d1a70bd"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.1-6269367663591424/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "3fc542686c5c82d7a01e3796a8bfcda5ed849c6e70f07d4d0c93e51368952784"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.1-6269367663591424/linux-x64/cli_linux_x64.tar.gz"
      sha256 "2ee167841cdc9a1d7dc5a624f1f15b84ee5dbb94b85af662a7299118cb4b1586"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
