# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.5-4952523841339392/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "6d628d7d25dfa188ef676564e39714667c4899b52bea6b5639d6591bc22b8696"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.5-4952523841339392/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "9de5ffcc23bc04db78bf8e3fe48d72576c4578b94b625888ce94d2900f304d0a"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.5-4952523841339392/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "8826b80c4b013f087734f24c5eadcc38600e74a1af411272d42a840d52ed3ee7"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.5-4952523841339392/linux-x64/cli_linux_x64.tar.gz"
      sha256 "90cc1894b6862510869ad4cf1a6f4c043b7ae7c095bad8d5c355788a0ca935c7"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
