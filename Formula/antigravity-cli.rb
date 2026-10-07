# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.1-4582356770750464/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ef5e385b32afda4cf1612368bb4bf155d3f8f4c55d51488649f508baefe77c86"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.1-4582356770750464/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "53e8fa00f8005fe6e228677d43ab304dc54e67416fd562dcf0021d31bfb44d30"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.1-4582356770750464/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f96efec99c8bda0d316867622e65f7920ba0c2b74a62d69fcd4ed13e0e84119d"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.1-4582356770750464/linux-x64/cli_linux_x64.tar.gz"
      sha256 "0e313b309ea58c71431ce86bb820936a3700e17e44eabce7bf2264617dc822db"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
