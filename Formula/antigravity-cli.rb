# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.2-5174998495789056/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "50b760c50ff288342fd4bb8b1c21d5ac72da75dc47b6870b6fe645e9370c95ee"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.2-5174998495789056/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "99f7ab841f50ae5f988618378fb92ea773c2392d5618d9849d4edf49083a62c1"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.2-5174998495789056/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "59cf9ec0f5a694fd9cf612262d152857368fdc819db1192bd3fe1219ba26254f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.2-5174998495789056/linux-x64/cli_linux_x64.tar.gz"
      sha256 "0754010347926daf00c96734cfcf59ee6043eab23efc35b99b2d62aad84dc6f0"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
