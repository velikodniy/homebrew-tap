# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.4-6277569641840640/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "33ca693ecf8874dbb0b7746f588264e947b919c8f785130e60a7f261190d48dd"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.4-6277569641840640/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "9aa56bfeadc83f724acd9e21e5349a688e029cd14592363425e432c57b81eaed"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.4-6277569641840640/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "333199327cc29e21cb8fcc4e19f7c02c462bf41dd876f1328d64e9922c631700"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.4-6277569641840640/linux-x64/cli_linux_x64.tar.gz"
      sha256 "aaab42e395cb4e3bfe5ae88994a340865d949f7a9e7f0604ffa2a3f1e8aadbfa"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
