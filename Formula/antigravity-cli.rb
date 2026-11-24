# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.16-5250855658717184/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ba47202f712de4c4a78fd787d81ba206d73e11c97572fc69420f29a77efc8d95"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.16-5250855658717184/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "14cd76a31e42ad461d6f8adf7631306cac37553f547aba0a0f111b0824d21c0c"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.16-5250855658717184/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "7ddeec790084e550af18adb04a5b6c5fdf2db3e1026854f49901a04cb4265c7e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.16-5250855658717184/linux-x64/cli_linux_x64.tar.gz"
      sha256 "9bdab234d06bad1a61be2321072652eb06be78baff1acbfae47331da5a090abc"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
