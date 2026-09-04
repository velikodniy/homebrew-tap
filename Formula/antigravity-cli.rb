# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.25"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.25-6680093607723008/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "8dab3e113726a3dfed69cbbf6757b4e491ae3b53aab0fdf17a56914d45281eff"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.25-6680093607723008/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "e5c21bd67723c5a32e6c557e1406a219c769309e7c77746e2ed801c9bf496f66"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.25-6680093607723008/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "063063128d62f7fa8ff8a01f9629744cb48ec1edcb2c57112d89a79fe48479f7"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.25-6680093607723008/linux-x64/cli_linux_x64.tar.gz"
      sha256 "45ab4a99884de17af76565a4ff8d9762d6e960067bd008fde9b050ec8fc9e421"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
