# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.22-5711547746615296/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ac0e961957f4a6cd67f9170b82edae15e92f107fe333e56d71aa01613ea547bd"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.22-5711547746615296/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "d19eb95666b949c76b2dd51c4a7a7202d12e38f348e1512ed35251eac804dcb1"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.22-5711547746615296/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a68925bc7336eb0b90de1e1aefd44d535f5487b7cf606a76fdb982207aef9a2e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.22-5711547746615296/linux-x64/cli_linux_x64.tar.gz"
      sha256 "1e1a219a86e75d7c6351f96d182ca2105302d5c34d8fa9c31265dc0adf24145f"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
