# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.14-4571742832820224/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "468edcc454b6bb1c321d8d42591a16ace4d1a1d628a4f1ce95ad236c9ee4cc19"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.14-4571742832820224/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "39364cc24e7b2b05a4a0138c60d5d5da39df9fb76dedc9e3f4b74a168512fcd6"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.14-4571742832820224/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "3b40c3baab245b43a41007c1db64df51f5f162b6059fcc4a4504731f2689d301"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.14-4571742832820224/linux-x64/cli_linux_x64.tar.gz"
      sha256 "68cf4d221cb62e0289245439d3d37f599bdc8e0c4e1e3dae03f326463a0c26dc"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
