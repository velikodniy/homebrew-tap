# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.3-4577820882632704/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "be7a40acd87ff43e453ae216e57843919c77dc7c0278ba2d97e21591fc3b27cb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.3-4577820882632704/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "3d8e79da604d9532915dc2fb4e4c770d7cc12254563414413987cbcae40fa0b8"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.3-4577820882632704/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "045aa7112f574ef97f8320a65d30a555c4ce9bdd5e3d56d40fce7e262ca98cda"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.3-4577820882632704/linux-x64/cli_linux_x64.tar.gz"
      sha256 "319b2cb3240d244930bd077033b466941fd7ba6f0881d783eee801dbd2fb9371"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
