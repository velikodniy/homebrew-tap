# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.0-5210873191596032/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "8fee3c120142490f2eddd286ff7d532b3e660c92d17e60a3612cc0ad1122478f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.0-5210873191596032/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "79799297510167ed46ab40add47f2360fe2bb08fc7495f1de02452dd8a109eb7"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.0-5210873191596032/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0a8e61f6548865029c4238b9310c686b7a733db5864cae619656abdf48090594"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.0-5210873191596032/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d9bfee1ae6e4329562cb87da1f5fc3c886d18594837e73e25c3aae00a49499b9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
