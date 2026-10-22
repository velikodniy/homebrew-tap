# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.4-4783783166214144/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "85482aa8969300183f71c9653d9f581248fba7f506342a8eb087f3d2503203bd"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.4-4783783166214144/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "12c96c065ac50d36e087c1fda1bba8d6fb4fa7af232d1ef2a44499c2481a52bf"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.4-4783783166214144/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "57a96abbc94745a5faf4f24e878766a1882b9aa4c4b83ba567717d8206745f5a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.4-4783783166214144/linux-x64/cli_linux_x64.tar.gz"
      sha256 "9ae4f7f0667a2868e15bb9ad93819ff7527c7187f12d12e3b5191137c726287b"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
