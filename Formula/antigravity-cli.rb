# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.24-6130423206641664/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "189af288ed9527f567ab3a53b35a6da2fc0c3812c6245f266c75a2a3604bdec3"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.24-6130423206641664/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "cd05d272ab2e4b97c2129a3e9c3fb6a76cebebb938a46930c7aa265df841cdb5"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.24-6130423206641664/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "e601bde6dcb9caebf8a83de235a0e10a21192c7f9ca9ed459a120714e7d42399"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.24-6130423206641664/linux-x64/cli_linux_x64.tar.gz"
      sha256 "cff1fb7ed735da72c35658645a4f916cf74f020d4cd30ab95ebe8c2a49a4d569"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
