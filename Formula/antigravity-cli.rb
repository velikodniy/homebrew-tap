# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.27-5211191891591168/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "e901e5c8fd20ab4c21c01df306030079286d08e6d372cdb535d5ccc7a3f565f4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.27-5211191891591168/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "fe5f102bf65be5d478c68fc2f9c3f5b3c5cb2cc788105310b35698fd1af10192"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.27-5211191891591168/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "97fc9fe5a6067406cd02cbe4ae6e362c9623a24d33bec486911246c17ceb6a94"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.27-5211191891591168/linux-x64/cli_linux_x64.tar.gz"
      sha256 "f874d4f6b8a73c2df660f580f25fb656fcb6e64adbfd746e6692e837fd9a20be"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
