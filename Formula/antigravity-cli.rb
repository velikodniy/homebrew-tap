# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.7-5951805767680000/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "1ed31957d30e2d9735b1ce545a1e9106233bf7ce07739ea1f883957f5d240bed"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.7-5951805767680000/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "67924f137f1ab884415fa5ab45de592d1d037eacb45be90f67d0bc6dd181498d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.7-5951805767680000/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0d6d488851745e80e69b8935d063e742945811b47111994b1a6dbd27df3010d5"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.7-5951805767680000/linux-x64/cli_linux_x64.tar.gz"
      sha256 "946cd06258d0ede72d0311550c914315798821f6a397f53ac760919826a19af4"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
