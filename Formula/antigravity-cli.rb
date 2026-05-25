# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.2-6109799369277440/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "8ef15505e65a917c4a21d139cbee6ac394fbb9b3124f3c6d746bd2c34a2a28db"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.2-6109799369277440/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "75d8c7b1792bad7efa4f0540ec7cba3310b24bfe6d7e9c05116912fa338f2ee8"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.2-6109799369277440/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "ca5aa7021ffda694b26f1a792ac965b053dd2ce426ce621b76d938df39675dfc"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.2-6109799369277440/linux-x64/cli_linux_x64.tar.gz"
      sha256 "f6c7ca80d5099333bf229676473bd111e0daa6a0d8db7c532adf6503b0eaadc9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
