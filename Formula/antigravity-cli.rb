# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.8-4602374149505024/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "fc9a89abcdc045a6a770085e73e377d23d067940fb57773a157f137e0bc3829f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.8-4602374149505024/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "e4cf78cbe61d1990b31b1d66def17add7cb7e783c87aae7c81172673516be3c0"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.8-4602374149505024/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "0ca407357661aa244fbc3b0e79a1d1d2623b2ca1515d2e2f77a801c3676bd562"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.8-4602374149505024/linux-x64/cli_linux_x64.tar.gz"
      sha256 "905d4accfbd61bc00bee84bfaf24c59b85d334cabd786cf99237b66cfe06ab98"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
