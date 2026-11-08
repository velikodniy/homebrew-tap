# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.3-6604829099950080/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "b47034e1367fc3c9f2856f1e1ae30bf12819a7213821ba3cce2123b090f2df8a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.3-6604829099950080/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "f0470eac7fb2f98886e1210457531bf1883c439ffa9e99d730388a1ff3dfeef5"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.3-6604829099950080/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "2d50060c7b1327995e5c81ec58829c91c2564ebb9fec165d3f9f1325ec188675"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.3-6604829099950080/linux-x64/cli_linux_x64.tar.gz"
      sha256 "1b4850599cce73a17f94ffb422df3bf9531531b77dbddc40c1a435e0c2c16807"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
