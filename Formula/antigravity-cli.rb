# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.7-5436940900761600/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "e0dec63ee4bd0a6aa2a3521eb3e9fc90448c453991ce2300e0cff138bd1bf31a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.7-5436940900761600/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "24865be9d7233156827a75c4973306846f02c0ea664aaca2aeb2dc22ef5decd7"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.7-5436940900761600/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "400a48e67723e41f1ff2c84705fc8866c5822c4fab21d4b72fe7dbaf120b2114"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.7-5436940900761600/linux-x64/cli_linux_x64.tar.gz"
      sha256 "f5bb465edb938212eb0a185d68c420ff5b78f08c72de5a6d88dfefaf7af17074"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
