# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.12-6156052174077952/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "53f7308a117f70fe7eeca4a69004e8239c8ea18c9d82e47966b290332b69b829"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.12-6156052174077952/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "03c6233261548872b176547e3a938f406282fbaf33ffcdefb63c35ca2246b7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.12-6156052174077952/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "a0367e5875ac1b88a6c0b163c86ebd5d13c9bef907f4469a6516ff69021bf2d4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.12-6156052174077952/linux-x64/cli_linux_x64.tar.gz"
      sha256 "7e3075df68ebad58aa1cf42231e9d8b83bf2895b5b058ab1736b0b6383c75008"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
