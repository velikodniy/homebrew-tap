# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.6-6212266538958848/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "87b8adbcb33d81d3629f049586ab2e6abaeb8c69d2e7d40425dc98e6d7aeee7a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.6-6212266538958848/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "a5ca02484a13fa252c3afeb2dbb6a4e4f432def6915faefec7d849fa112039a2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.6-6212266538958848/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "42bfcf996e27f6e63330ff74150bbb1d69c81632586b37ff440e92eb81955520"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.6-6212266538958848/linux-x64/cli_linux_x64.tar.gz"
      sha256 "408f902da6fce5a45ef777c246c182f6ef263eb155cc26548b910cdbc792dfd9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
