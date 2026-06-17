# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.9-6003845613092864/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "7e838169b26a400bb4f0cf56181a1967a33a41c90ac2b9de586d004539f4e602"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.9-6003845613092864/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "d665f3a4d3c3a57b8ca17742ab2126ffaadd21ac031d57da2fbbb4925cdd770d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.9-6003845613092864/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "944d67056b7cc6e4411dca84d9f077b1e460c8cd2a4432d2cdf219421ff73e5a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.9-6003845613092864/linux-x64/cli_linux_x64.tar.gz"
      sha256 "cd80f85f43b52b389d7b498d6784f8316d57a9cc62eae23d840c5de368f9c4d5"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
