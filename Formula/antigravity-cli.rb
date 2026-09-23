# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.8-4907747922280448/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "f77d57d99ca83e50a3a767d70621c99962ce4242e5470220f3adbf1c50844538"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.8-4907747922280448/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "8ba276816890a91171a8b0861e4e9eaeb334f884743f525702095c04b4bbf446"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.8-4907747922280448/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "85ea71929436711e4b0332026508ee4e7ddb05192f24f1774dfbed879255fc6e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.8-4907747922280448/linux-x64/cli_linux_x64.tar.gz"
      sha256 "244752206d1f65c01aff489628f1df51f1a3fddacaa8ed74984661ebb6d09136"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
