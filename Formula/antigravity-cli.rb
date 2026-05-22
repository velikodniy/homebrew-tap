# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.1-5826024320139264/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "9262e294f53c7321bee1f448f3e5ab6dcf28dcdec34bb95b5999ba31c3f10962"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.1-5826024320139264/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "8cfba451b3c11c8969d606518e3bf9525834a24544532f9023fa499b73bfbc4b"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.1-5826024320139264/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "c6c306cb4c273455dd0b92c29e791499ff937f6c9d0a22e1ef81c971e5bcf51a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.1-5826024320139264/linux-x64/cli_linux_x64.tar.gz"
      sha256 "81fa03ef9d8576d08b4cc0048ddbed29d3d46a7801f8b443a935471dd9c06dbe"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
