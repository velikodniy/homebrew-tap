# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.12-5784551402897408/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "076a1f0a1874a2843862af9d0eeae751775a84e736e35a84de0dd268069c28cb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.12-5784551402897408/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "1e2f8ed29c05051c61015041d82a50bd95f754c19c8cc7fa8fe35b9f66c9a075"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.12-5784551402897408/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "bd338c9d19ab963d9d2bc027e4e797b470ea84bae02080e4fde4555357ea9444"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.12-5784551402897408/linux-x64/cli_linux_x64.tar.gz"
      sha256 "26c7c4c661d6c9beda734fcf305031056a6ea46e697c4533e8151179724e2950"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
