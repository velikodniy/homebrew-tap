# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.8-5636713813508096/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "622d85db88bcfbf060aa4cbeaadcf2a287420f31236c1efb287409a949ccab25"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.8-5636713813508096/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "76afe4622132596f68557ef4531ec2e2dcd40e8025f6fb4435a273ce2eec0027"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.8-5636713813508096/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "e75cebb03fce0fcad7d3bb682eb84c356a3c50ff8fb3dc4a89d2051f34fca0ab"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.8-5636713813508096/linux-x64/cli_linux_x64.tar.gz"
      sha256 "e92e6215532b3ce84455e341944067753ad90f6d24cebcec8002ce137e5162ce"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
