# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.12-5877618327814144/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "7b70bdf27727a68d58c1bebfd3fd2e87d1172dc32eab9827d52fd62ad64f286b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.12-5877618327814144/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "82f5ccc62ae77e202c33cd0347b564ffe645b7cdb2a35c45bb6eb34d516e8832"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.12-5877618327814144/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "dbfcc9bb91716d68410d99027892d34cf412dae1d23b82e191549a8629ddab38"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.12-5877618327814144/linux-x64/cli_linux_x64.tar.gz"
      sha256 "c778ae4fd11e5dc2dbddfd7108ee1974ae60fd531afb246be41c6e4bb49c81ca"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
