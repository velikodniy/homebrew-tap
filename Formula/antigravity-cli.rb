# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.2-4951595792859136/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "c3f56b381c4755cdd02e5de67373c24788b2a2aeade156756b4419b67253bd0c"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.2-4951595792859136/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "fe99ebacc6bd46b4bf2d85c718420b28b699210cf7c2e3055242e2dad7a1beb3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.2-4951595792859136/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "cd155ecd9bc962037423e6826ed0b61d3b16d84d350cdc9a8c14478f24f5f235"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.2-4951595792859136/linux-x64/cli_linux_x64.tar.gz"
      sha256 "da696a8dc6122a63d5ffbdd21b02c8a62d5361fba0ed7d3bc2d2619889e62711"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
