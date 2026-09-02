# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.23-6260551186251776/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "e0761b145648c7a90c3bdd636e3abdb87c46dfe5878bd377500e40e64ca203a4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.23-6260551186251776/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "3d91b536ab9daf63f7e4d89cf6595a94b1393bc4da8c4c98d895377b43c024cb"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.23-6260551186251776/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "cbf2299514468eb31b9ccce7b89a0a011dc6497894c199c06f6b771cc9848a67"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.23-6260551186251776/linux-x64/cli_linux_x64.tar.gz"
      sha256 "379693509ca4d68d74f75def6c95996739aa6c1dc38b120c399035c108f1a39a"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
