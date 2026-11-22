# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.14-5302690847260672/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "b01bdd4591e13ddfcb0e049bea74ae9f83e80829adcf64aaa58f5bfb1a425a54"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.14-5302690847260672/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c142141141cbaa93f4e46904b76341e349f3f2b78445f877f39468dfe60dda1e"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.14-5302690847260672/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "e5f69a3123fac66974b303d9a201f381a0fb32b3ef869d9139da85d5caf67a2a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.14-5302690847260672/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d58386322d2073e96b33f7cc32b4e9ae2db6228f58440369725967b2de48c7b5"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
