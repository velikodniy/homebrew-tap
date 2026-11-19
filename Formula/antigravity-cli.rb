# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.12-5281398513336320/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "fa2bb0e6646db70e6610ed41382f9ff23e260b8f649427c4ef1361aaa8a8dbcb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.12-5281398513336320/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "934b7023768637cd2f827bcb76b0c38875a8beb3502845ef1daa2f125cf458f0"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.12-5281398513336320/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "594046de1b91561f7fe16476365e3843038ecca56f5f59af45cf9d3091e43bd4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.12-5281398513336320/linux-x64/cli_linux_x64.tar.gz"
      sha256 "0f0cb851cdc9fbedd50432570aa6ae9c4c398b9ea3f1e23e7776f707643c5b3e"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
