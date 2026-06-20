# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.10-6349723456634880/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "c857b5fc7035460359e8e64aee40768e6f5228358b4271bc7ded06c3e6bcd260"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.10-6349723456634880/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c80d8dc254c5276d8d068d587e34dbcf81042a8516094dadafe399b313ff6eb8"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.10-6349723456634880/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "4674fabc3681221e54c90d15077c9a97a25ea71222001dabe44bf1576e888593"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.10-6349723456634880/linux-x64/cli_linux_x64.tar.gz"
      sha256 "6547cf9a37227f26004fa4b805418b1df96f54c57b9723ca7d10864d2610bb0f"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
