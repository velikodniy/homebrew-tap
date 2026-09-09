# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.28-5576113066475520/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "8f642cffce8bc14aa3e49d1a75780bb2bd99fe7a3016389627476d9e3ec911eb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.28-5576113066475520/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "629887c5baf30c9c1c130a5d3d9fdfebdf0b67ffd45f822d771c0abfb69e405b"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.28-5576113066475520/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "789420d2937393498eb158c4af8321d78c387e31c861db0c79627879509aa8a8"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.28-5576113066475520/linux-x64/cli_linux_x64.tar.gz"
      sha256 "074ff4f732a750ad727aeed5fc82ed34b1fb72fda2a6ceba6c8e652ffd0a94b0"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
