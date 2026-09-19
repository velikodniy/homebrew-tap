# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.7-6731160148115456/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ce9fe3f4d6f44a2b1c83b334fc5c8f2975079959e24dd805e10eb49ab8c76a7e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.7-6731160148115456/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "2f1a82f55201fc47987b448e34d90608bb0eec48e4c45f0a27ba49625d984cd5"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.7-6731160148115456/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "8ddbb669158de1d1bc4c1fe5c130dca8f51da80d62569a54a4133f06768a723b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.7-6731160148115456/linux-x64/cli_linux_x64.tar.gz"
      sha256 "e410dd56d8c213ef12643d3ff5eaaab57a17e05bbf72e9415322f23879fc4a18"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
