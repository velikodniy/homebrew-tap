# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.14-6392696810635264/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "077159b1adc5dbfcbd18cf979ea70f77d61061d4568ea3db48c2a60b6e3e4c2a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.14-6392696810635264/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "1231e5c132746e4c4f6ab9178b45362e1fd7d8ebe568ead6328032330aa4294c"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.14-6392696810635264/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "89f537d62dd853b27e419d463dbbea5b17972c6307a12f03f81b88408fd8256f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.14-6392696810635264/linux-x64/cli_linux_x64.tar.gz"
      sha256 "345692ba5dfa201b0fe4b360c2d8e9bc6abf44b59221f190f8a6fd775b78daae"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
