# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.10-5501573669978112/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "05a7fc6dd348d2003787f3a750ffe9e9b067c44504002c6a834412831ff30c15"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.10-5501573669978112/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "926992cc3ac63bffa05ad126104f92a23df3e76951bca1dc9e5fb9f1d135aa76"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.10-5501573669978112/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "107b7499ca90018ab2b6c1b636cdec4251dfd836656526845e354be1bfe05eba"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.10-5501573669978112/linux-x64/cli_linux_x64.tar.gz"
      sha256 "ed0526231e3916b6cc1b025cf356862e88cc036e27c3c5eae5a580495fc79773"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
