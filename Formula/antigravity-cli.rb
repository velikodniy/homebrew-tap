# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.15-5434575321694208/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "66f7e9e8750a506e8a2caaedaadf479f023820f712015c9c55cfb91a2891521b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.15-5434575321694208/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "5602d71a3afc16ee07fcd0bd806842342464f78ed5fc9fea69adffd1a9e2a64d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.15-5434575321694208/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "851bdabda3b2eb679d0d46b469629b91752d1f1d7497185107408b60c58c2e32"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.15-5434575321694208/linux-x64/cli_linux_x64.tar.gz"
      sha256 "bbd4a4b29f0e9fe1fc2e1345b5d44fa08540e43014da46bc2c4bf70cf05745d8"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
