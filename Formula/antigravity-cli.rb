# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.2-4835981233356800/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "4fed2474da314f109cf505f1325eb84307afcd586242e6b691f074fd1a73e6aa"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.2-4835981233356800/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "a81f6a49d3fe1c07919ed332f2363f95109549fdd0195cbe8344d226edafd4e3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.2-4835981233356800/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "08dd4a2ca52d531fef1dfae4ec2fbafcd56342bfa694c8193a60da2b26fb1898"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.2-4835981233356800/linux-x64/cli_linux_x64.tar.gz"
      sha256 "6395837ac0e193dd3fe50f1228e1c4aea345ca99636d54404ab7e74397d4091c"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
