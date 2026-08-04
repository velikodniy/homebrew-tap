# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.10-6423386432339968/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "0617d4aa7b0ea7ba1e24143b5178d28febaed8e5fd49b7e6e99765d4200d29ef"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.10-6423386432339968/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "416ed1883c74072015cc8e5ec2768ac6ee4d2cd9e2f4ef68125e943e79794b5d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.10-6423386432339968/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "4308f85b1dd4f6b5654ea5f7a0962a482f33acf8169b2e6ac4aecdb209d13411"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.10-6423386432339968/linux-x64/cli_linux_x64.tar.gz"
      sha256 "9e94cfffa869ee2bf9ab32e05eff3baa4661b66d5e00a2fd40a8c5dc6f9bd450"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
