# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.18-6386224290725888/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "f154fdbe81885c36565b74615a9ef6c7c92fb9c2bc29acb0a300bc5990691871"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.18-6386224290725888/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "113e058df8c3e488c90f64ebb1dbdf7763ca01af7027ecfd73ae189f3c530366"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.18-6386224290725888/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "97799abac91ba0b29b77598b62f903b866461da17680263a182fef2cb796ab0d"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.18-6386224290725888/linux-x64/cli_linux_x64.tar.gz"
      sha256 "a4960723ed9cf5b5ac72ed541db8df4d62741795261eb93a4681006ccb23d5ad"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
