# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.4-5037094733742080/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "196e677727a0542f040a92e4a192bef844bfb40bd56d8925ddfa389aaac65834"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.4-5037094733742080/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "214f8fbceacc0f79fa886501923c6a254ee0080343d3a829ea136e51f8b3e6d3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.4-5037094733742080/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "aa8870d1b93b646ed52fd0862752b3ec8c5e91afd22d943eb2a9a0b0671fd939"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.4-5037094733742080/linux-x64/cli_linux_x64.tar.gz"
      sha256 "96cccfec6f205db8fa4016531bda1567827f1d056095238735af6b8b55a7f7d6"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
