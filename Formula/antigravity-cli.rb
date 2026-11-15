# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.9-4515810895593472/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "51fb8eb7e18c53d4665f0043b761f04f4d0d4b2eb046bac6c2dcbe32473b5b2e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.9-4515810895593472/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "d0fb8e28c233fadbe612fa273d06b6c189932a33f1c16f0d2c1cb6732123d6c3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.9-4515810895593472/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "3a18c238c7ee6661e43df7e824a7d4c1bed78aeeda09430921a0f1dbfe825bca"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.9-4515810895593472/linux-x64/cli_linux_x64.tar.gz"
      sha256 "8b1f5e56779f2434a0af36f1b715a8392a084de550f8c68bc79821f95fabf3fa"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
