# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.5-4931130160447488/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "b37495eebe53e1c565dd6d77bdd1d3ba603216b5d3acddafb185f97d35fdf9eb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.5-4931130160447488/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "22b5bc92a411efeb7a9f96dc52a8f31583940b33af433d732d144e98206e61b7"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.5-4931130160447488/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0c9fba6d51d98bd40f87beda43fbc75edc96578382caf4ec2efa217f751dfdb8"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.5-4931130160447488/linux-x64/cli_linux_x64.tar.gz"
      sha256 "e450caab5682acc920721b04cf0f6860c313d1f5296bc6e49d79cd3843802e65"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
