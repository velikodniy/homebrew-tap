# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.8-5447777392656384/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ecd1f7b35927bc23ed4496139aeb0e39b99c4b1c63d5f1f3b8fc25ab515e7631"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.8-5447777392656384/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "ce851c99afb9a21a8c0cadebb1b7155a951ffba76749081f0fd2c06b0a7b29c3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.8-5447777392656384/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "bbe34c56bdfdcfd9b9a4fd24f7430f7a807777b356b216b41862fb6dd9450c80"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.8-5447777392656384/linux-x64/cli_linux_x64.tar.gz"
      sha256 "8b165f0fc584f0f92dd1318dc3a090706ae18aade7d36b0b8623b85aeaf86c52"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
