# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.4-6085322963025920/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "f59c12c289e74bbb48178f827702c6224bd0aa920914319f85b42760dfc72f4c"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.4-6085322963025920/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "ed5d05f8175d05b1a3ba19e06552698beb59f0eb9c9e76a7eca092f5a8f7d07e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.4-6085322963025920/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "9dee8d8de3ebf420525902ead1b4ca8d12b93731bfae3673f6f8a24131ac5e5c"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.4-6085322963025920/linux-x64/cli_linux_x64.tar.gz"
      sha256 "dcd3e4d8c8afb1902d59c1ae52812458d2ddab67a5d2db44810c512910d918fe"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
