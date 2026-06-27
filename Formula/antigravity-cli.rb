# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.13-5758107482193920/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "c00b3aa10d4eee821f7ddaf3185942c88511ebbe425663692f7732d8dd1e83c2"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.13-5758107482193920/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "53e23ef3f54d0212df7fc73ea1eb99c34e4c97bffa1f886afe565fd142c9ab89"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.13-5758107482193920/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "e2f062ff8a573d2da54c03c8f0b66e130a563a08c87b6db174953a9afdd21235"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.13-5758107482193920/linux-x64/cli_linux_x64.tar.gz"
      sha256 "6bf990458c114af3b3173dcbc1b0fb9ab93bea91c53b605fdd69aedd29a21cd9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
