# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.13-6057583128215552/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "f8c27b70708843eeb2c8f6efff0119a27041980e95cba6c49b86a0950ed19ba1"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.13-6057583128215552/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "8eaf399051afbc67435220f7fbeddeaaa6f9d50a087a229e628a4b2510c05c69"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.13-6057583128215552/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a9fdd2a386770c27dbf784436bd4de70d4d4901c832d5ec6abf27758d5c370f8"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.13-6057583128215552/linux-x64/cli_linux_x64.tar.gz"
      sha256 "edc7c32b5ab4fc2e4da03381fee83ed566dea6b56b56f9329cd13cd77947a1d9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
