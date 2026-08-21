# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.17-5084709148033024/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "60fe89d3aef472ddf6c7048032f7585fae732d879f3700fc3188c68c46b35cdd"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.17-5084709148033024/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "af48ab23e69caefe1fb9b14efd7e1aea8cc46db2a6191afa8949b28afdd2547e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.17-5084709148033024/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "28822f4ba6d5914064dcab3a1b953b2d10e1c9fc938178c478911b5f0b5b06a4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.17-5084709148033024/linux-x64/cli_linux_x64.tar.gz"
      sha256 "15443966494cd62938320900acfd16df906cf4da56279e4dd8f4846c09f849df"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
