# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.3-5723946948100096/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "51627eb3df9a3a9d878ac4edb87b3f4930002f5d9bba3542d56506b60ef212a4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.3-5723946948100096/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c12607de7e333c54799b11ccf01b83701f33464b000799ba81662640304d349a"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.3-5723946948100096/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "453f9c5530877ab6369e2536e576cfab2bbbcb45923a9bc776678142538e419d"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.3-5723946948100096/linux-x64/cli_linux_x64.tar.gz"
      sha256 "7a7239a69b65d3cf3af7e75f27b2ff4e9cce696a7b9a9e5c37c695f1c74eec34"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
