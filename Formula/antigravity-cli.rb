# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.10-4751581200121856/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "95d5d8ab8870b849a157f647bb4d9953184f97855cbfbedebdedcc421ca5b435"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.10-4751581200121856/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "0b09a1d3a8c0df10a1090f99fb120eeff007dee53e7853f241a373f0194d5ca7"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.10-4751581200121856/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "b85fd6d22f763dd331bf86fde5fd33fc79ecf6ac1cb254b9c2b6519537f5694f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.10-4751581200121856/linux-x64/cli_linux_x64.tar.gz"
      sha256 "77cb69251292aa35b0b662f91f704f06dd787b72f7902a62db8c6d692989203e"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
