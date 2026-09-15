# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.3-5101874907578368/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "c244ec966f5d8c22d845117332a6858f3abaf0fb5c8058e337d51b77b2c93e50"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.3-5101874907578368/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "5384ba8533bc40899526e4ee1d0ac6289e18503ccd28ca49ca5765fd3efea15e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.3-5101874907578368/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "e500d8b5d61bf8420cd397a1dabfa80899817b850b57982a1f5d4742be2b5d05"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.3-5101874907578368/linux-x64/cli_linux_x64.tar.gz"
      sha256 "57afb34f2a4be9296beb477e600761b6ac7401eb3a54a64a0014d573b7fc3af4"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
