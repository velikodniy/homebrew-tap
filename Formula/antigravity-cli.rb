# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.5-5958982624477184/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "04254cb335c4f056308e1a7f188365f58d5c688d5af162921eac4bdda736ba55"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.5-5958982624477184/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "57727fcf8048860bbcfddbb404a2df9aa26557238c4e7d21feb7d646525f478b"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.5-5958982624477184/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "d61ace663d7efee9dfd8f4f881e6f1021eff904a0688a91cd4d84359ee76f044"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.5-5958982624477184/linux-x64/cli_linux_x64.tar.gz"
      sha256 "1d586501b8a13d146e8aa3c7f00634f50c6034e2c428ea7d013377d36315a69a"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
