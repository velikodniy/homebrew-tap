# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.6-4884751325200384/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "8854514fc3f577c8b4271e735a7605562ecd353aae270c323c3ee6876e892296"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.6-4884751325200384/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "b49a4d98e3592c692e20941de2da96d1eaf9234dec9356747e69227ece7e52a2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.6-4884751325200384/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "ef88c996178b55a3c5416f2c8b67a9c343ac0a62c900e7b7158ee2ff1135ad96"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.6-4884751325200384/linux-x64/cli_linux_x64.tar.gz"
      sha256 "513c74ad3e70323839a65d8dccc6f9977b0903e5facd914cbb06be283c2bb640"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
