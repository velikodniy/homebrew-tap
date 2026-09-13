# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.2-6061403484848128/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "f90ff6094a196f1be3854ac45d999a542d47ec66a1513aa882a8505b947b9a0f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.2-6061403484848128/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "2b44ed726a73a0ef0a39956c80e07b5898c0b4fe21f8ecd383be74f1c0b65e5d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.2-6061403484848128/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "00fc5cb50cd714b81cdf1298fcc90e63a59e3e564a4f8076454ab8457d36e6eb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.2-6061403484848128/linux-x64/cli_linux_x64.tar.gz"
      sha256 "2cfa5c9a4a1edd96db6d4058f34970be60d3bcacda866e2bdce6aefb2451b48e"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
