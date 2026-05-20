# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.0-5288553236791296/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "65c2f7b5e27a21ef983b161ed75866e89139a682adf679000e1a5d9d374e320a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.0-5288553236791296/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "744a1a25dcf0bf6628e3add764d2155c44d7d174edf8b181a7427f7d9fb3fb53"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.0-5288553236791296/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f4dc7c96c1836b00768d8a6ec6eacc7851f3424bd6f4ebe4d8b848a652072a85"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.0-5288553236791296/linux-x64/cli_linux_x64.tar.gz"
      sha256 "70096340574fafc4a06c4d3c8057314e22d475ce1c820d0ad51ff07fb7e99eb6"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
