# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.5-6164039479459840/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "60b46713d0e7217b796560ffc1c3c569f4e0b3357076ee6b60d464832d6d4105"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.5-6164039479459840/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c867ca21c9d90a4e67ce8200bd4471ad3df3df2f9481005804263732da991bbc"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.5-6164039479459840/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "065505ab4686ec7113b7ccd87fce87795a8fd4b7776f771da4d53940206e34cc"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.5-6164039479459840/linux-x64/cli_linux_x64.tar.gz"
      sha256 "007a5a44dbaf1caea464c3d9848c63b2f69945b01a8bf8852c56c477a64374cf"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
