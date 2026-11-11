# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.5-6740358537805824/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "e079f5ba69d548443031d4d9a66a998fe2781c6ee9380a9bc6e9565ba7d093b7"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.5-6740358537805824/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "8c42c5ce94d74ad2551ebc2d5500e6cd6a0443f65f8501dac5f419937ad33021"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.5-6740358537805824/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f6faff7b47ad2d9a60ebca9d774239a1cd23e53a8ca6d812c1e9583909dca655"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.5-6740358537805824/linux-x64/cli_linux_x64.tar.gz"
      sha256 "bfe2c25edeadd98c2942417c9972ee0e1faa3f0afdc90711e84d5f3a633b5078"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
