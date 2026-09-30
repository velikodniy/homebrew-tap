# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.13-6662628811079680/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "092513fcc213cf5034680146a8bad24c4064ecec723a630f42ee7d1046eacc98"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.13-6662628811079680/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "4375792a19873459b62ff65552a819b68c7d83c47a3a6371e8afcc5d5b7c7b1e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.13-6662628811079680/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "43bf59be5895475f8a32d4f94f1241f665986ea41a3622579e03b74e1b63dcfb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.13-6662628811079680/linux-x64/cli_linux_x64.tar.gz"
      sha256 "b0f195d37973be7b08c3b705d7fbbcd948dacb4a3c2176ee52ca29f7159bdc21"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
