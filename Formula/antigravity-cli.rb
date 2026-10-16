# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.6-5068262057312256/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "44e2c5a5982f67994599c533625d81b7ed56f568452ec132388bd30c42ed7465"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.6-5068262057312256/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "488297e19a45cdcdefbe1f7af9a369431c11cbfc6a19455b61d610ee308b6fd7"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.6-5068262057312256/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0e11472f376e2943c6f812280dea49b204acc3be15794c6604a46972c5995b12"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.6-5068262057312256/linux-x64/cli_linux_x64.tar.gz"
      sha256 "e88ed835cbc4af504f64dfe20175f5572dc2a425dbfa2fcf55c0358bb444d80c"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
