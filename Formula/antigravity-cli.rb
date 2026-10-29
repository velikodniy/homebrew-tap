# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.9-4962164969177088/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "64204e14975e632ae7f26912bed48d49ffe17bb2719093ca38c00276b1f134f0"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.9-4962164969177088/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "93034436d465082130891a284f0b25d0cfd46be576c09e78c1ef6dc2ff2fff77"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.9-4962164969177088/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0e75190d5aa48b0f7623b201cfef542cd36a1279b3d28afa7fa099983a073493"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.9-4962164969177088/linux-x64/cli_linux_x64.tar.gz"
      sha256 "3d84e3a461b9cbf9ffc9deede155a01921380e964f51a82c0bc505db80ae8525"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
