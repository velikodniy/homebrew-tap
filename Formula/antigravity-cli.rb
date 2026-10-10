# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.3-5524738307653632/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "c39926f3312e87eaa56d750658cf442669d0a716f49319d06369be7fa80520eb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.3-5524738307653632/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "78547d90bfd1559a87ba63e941f9332a0d1889d2de415da337dedec8dc9aa239"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.3-5524738307653632/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a9d23fe1d7e5c8471881ab37723571a8d3f24e6ecace8fe082f8c0c8d90f41ca"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.3-5524738307653632/linux-x64/cli_linux_x64.tar.gz"
      sha256 "8ee3ca32574c431285efbf4d4732f7f8d53e959370bc4a61646e4fa496f7f2b6"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
