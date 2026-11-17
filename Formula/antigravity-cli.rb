# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.10-5253791805734912/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "1470275508c2516b0f208a9050c1572b63b21776d4e7f6bc928a5eb91f3803d2"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.10-5253791805734912/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "cfd04ed251104e0feaf0d4a9aa1afa50bdc5a43fb3141875a70ff50f47c18103"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.10-5253791805734912/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "5ecb4e7763dc497a7d0157d5605a8c86ec55f24dc4efd8f597bc499d2ebca7c6"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.10-5253791805734912/linux-x64/cli_linux_x64.tar.gz"
      sha256 "72fb2946d6f5bee3d4e8928fb8a7901104361566619e69d40ae6dc03e094917b"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
