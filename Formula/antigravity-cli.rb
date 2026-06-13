# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.8-5963827121094656/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "1c234ee8d31645bf874db1b71d5e02421c6350661c8a0f408dab310501bc5b94"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.8-5963827121094656/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "54826c52358dc01406daf4ddb73bd620ae6b91e376bea5abc10b6e08b47f8cdf"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.8-5963827121094656/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "cdbc51ffcd8a2b94991fd36c866fb0855cfaed1e2ef0ab1fcf3be7b64a3f9f71"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.8-5963827121094656/linux-x64/cli_linux_x64.tar.gz"
      sha256 "db8ca9d3c8cce0651e72b6fffa8374e2799c5554d94df2b1f9e42bb515745bff"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
