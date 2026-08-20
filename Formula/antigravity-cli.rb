# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.15-5350383476932608/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "66b784680c07c78df44e7bdffd6de3395385edc333ce8eb259d3719dca76485f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.15-5350383476932608/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "d138bf34f1cf11ce15c25647061369f92e3c043371cf45f5c7ad71eba0a6bfc0"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.15-5350383476932608/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "5be066db6673faaec233e8cdb3f494aea3f30d8bf21a5fe0d6cf19451d83b7c6"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.15-5350383476932608/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d0b1d6f3678a061915caebc431930e240b863bf4059369c08c6ffceb24e66b5f"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
