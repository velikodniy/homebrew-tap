# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.6-6458082025406464/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "75d23ad8451a6ab2fc49b7baa615bb532f157b4152d877ba76a2ee72a63ec7d0"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.6-6458082025406464/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "619817086950c0bd37f2fcb7796e82f90dc1fff920ef2f5fed4e11170c04ab3e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.6-6458082025406464/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "be6303d4b891a79457ca6ed169aff2efd3ceb694354634e85ef58c883bae6739"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.6-6458082025406464/linux-x64/cli_linux_x64.tar.gz"
      sha256 "3eae552781d3054b782142e3cfe7be73e3bd068c736a432ca6f1adaa40f19e07"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
