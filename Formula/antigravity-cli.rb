# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.1-4523430503120896/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "2179ba83eb5429ec19260d022196abb3cbe5e65e11e2c2ef2d19af564c1558db"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.1-4523430503120896/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "f7952882cdab510339eeb67dfe5de85857b4e29078ba56db6c0e5f2b1b43f2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.1-4523430503120896/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "c43a50831006d95a7637aa9cad7000fda9b9bb4b3ece8c53cc6c5089b92542ea"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.1-4523430503120896/linux-x64/cli_linux_x64.tar.gz"
      sha256 "2a64ccfc5f6679c253769f0760614af5de04d8dc1eeeec9b9752ba4c8dd92250"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
