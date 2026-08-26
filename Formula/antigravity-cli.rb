# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.20-5830032204103680/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "4f471594a692c6a1d53f63b22ae2ef3cbf7681194eaceecf635ce0085bcc5fd3"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.20-5830032204103680/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "611975e1b08b8f844941ad0523abf2585790aefc84d8c31d79d710d3bcb39bcc"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.20-5830032204103680/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a2f5c205e9c1c89bfcf714f485a08c63b1a5d907f98226191e7b5a177e0368a9"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.20-5830032204103680/linux-x64/cli_linux_x64.tar.gz"
      sha256 "6ceeb0ac91df6dca60a4fa02856807ed2e2fc6d3d70bb734d1ad61a9e44ef4da"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
