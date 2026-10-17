# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.0-5281842794987520/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "92b4bfb5b51e7b44ff3dcdb1a3179cb2c31b798a79185e19df3a51ae9ff121c7"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.0-5281842794987520/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "60f187b7272cb67852d0cf2143d7331116257f86247a92ecbdcff6a47e99d490"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.0-5281842794987520/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "cf953adcc69f87d00d71f97c3f35dc723a8669a350accf9a199df781f0523f56"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.0-5281842794987520/linux-x64/cli_linux_x64.tar.gz"
      sha256 "fd96967583c1eed94733c039638fa59b71ddbd823c75ebc8dd0e677463565aad"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
