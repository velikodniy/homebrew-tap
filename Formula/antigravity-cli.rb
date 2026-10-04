# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.16-5594158052802560/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "97b03ea3e90916e0c8a49edea615406f8ec69047dde17228a478c1854445d32a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.16-5594158052802560/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c1960f7ae5b4d741af21c17b39cbb280d7bd5973e3deca9aed41ad7cc16c5fa3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.16-5594158052802560/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a6d269d2764e5636ab2bcda73b78c587fe9d00ead767aa3974574229585ee0d3"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.16-5594158052802560/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d4247430e04cebdbe1ca93d9ccb483cd2f3daeb4cdb0ace5a71cd130e0bdab84"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
