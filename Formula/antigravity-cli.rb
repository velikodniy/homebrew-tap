# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.3-6260531212976128/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "4ffb454399224a3344a599f085d0e1470674e865429b96c2bb4a9b2066a72c70"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.3-6260531212976128/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "02249e863db7bb99afdd595b772d613e7e8b3595c84d350b0f26c5c9b26b8bc1"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.3-6260531212976128/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "27aec1dd6270dd4acc6ffee425d8d7f28a89688d7c01191fd5e80ce6dfeb8ded"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.3-6260531212976128/linux-x64/cli_linux_x64.tar.gz"
      sha256 "047d3635d97b4aeecc0dc33bf527d8411179d1544303003e89fc3cb83b0d0462"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
