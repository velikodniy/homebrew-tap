# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.16-4893150192467968/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "70085c462422851ae18a23acfd9e6439c46b73dcc062ab67934f00d9c233ca0b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.16-4893150192467968/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "93e8612d19a24748b20ede2397defefaed8a38393abc64696eb4848970062af6"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.16-4893150192467968/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a66ae3e75e024c03aa79d6618ef8199a0a71ae0f43b9e5ee9e930a589ba0ca2f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.16-4893150192467968/linux-x64/cli_linux_x64.tar.gz"
      sha256 "8ffc887002920b1b4ab42f6213f50a21aa7bb4ee14caa0ed563129a2ce39135d"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
