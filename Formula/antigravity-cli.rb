# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.17-6683332533157888/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "700b4c1f3544d547784baa0e4c727019ca7f34944d5269cd636e897a4d6320c6"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.17-6683332533157888/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "fa91b60d8b8b074e78ed3c845ab7c5428be4b231290ca9a352a6ecc3756c5a0a"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.17-6683332533157888/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "4a1af1bb91352b72f40fce373a028023bf0e47f5fceb3dfa48249816c0f0caec"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.17-6683332533157888/linux-x64/cli_linux_x64.tar.gz"
      sha256 "b0ed8a7c375b5af3af973f08a601e41aebb38bac7e80b922ab54d973a4275493"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
