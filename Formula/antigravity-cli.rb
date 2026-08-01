# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.9-6572839516635136/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "bbc42c75f6e603fd35a70f353f2963e74bb4ea261f89e4256f5f60a78f95bb84"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.9-6572839516635136/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "8daa903f5135072b3921dbac90f449cb8a778102b03853e8691146665cad06bd"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.9-6572839516635136/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "deeb815d07a656074482b2e428ffd9794a2fffbf5df2056e9bf75936b85ebb49"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.9-6572839516635136/linux-x64/cli_linux_x64.tar.gz"
      sha256 "467809635ef00660497607111547e80a0a863c6e8fce43b507cd1ba6bf6ddd66"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
