# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.7-5900205422411776/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "9fed7bfe90cb158ac00b5b2da64dd54af732f7c062259e68ebd060b827fd0d88"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.7-5900205422411776/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "0ac94431f774659e71928019c26c649e5711179629b86968e96cb9193e2ec557"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.7-5900205422411776/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "b273c791b7647f680598fa1dbdf9c8086bdc42374b2276fa70e900bf8120e1d5"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.7-5900205422411776/linux-x64/cli_linux_x64.tar.gz"
      sha256 "67fd4e70be739b1f8b18f90b511da8cd2a7aef24e888e5837402e025bf7fdbfc"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
