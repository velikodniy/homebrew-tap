# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.26-5550154686791680/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "76160d648a36c457f030116449757ad0cf6b4048694891cce149af64461f0acb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.26-5550154686791680/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "338c7884077f55b47d49c99f1fd34de8a7f8fa29ef4455550ac128c37f2d2ab3"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.26-5550154686791680/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f595d2f1ae23001afffab9cb9012d054f0e8a02a1e848537f73239ae8d3fbd6d"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.26-5550154686791680/linux-x64/cli_linux_x64.tar.gz"
      sha256 "c47c0726266b3513660b7094bceceecbd03d8ae907786aa269c507ceb7e4ee54"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
