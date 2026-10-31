# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.4.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.12-4768735748292608/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "4c989b5ccf0e39c99a1ce6df82410abb628d4d83e0d3183527702df744d9c589"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.12-4768735748292608/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "624d01369df5841f64555741dd09d3ab4a6d174699a4ded896a5180c81f2c2de"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.12-4768735748292608/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "30dd61ebe1f0a8829057ea2de29dad08c710dd972ce4c02949f51e632135a86b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.4.12-4768735748292608/linux-x64/cli_linux_x64.tar.gz"
      sha256 "3368d1923fc869f21ec8fce83252a8c96c89283aac9393958ac91fbf7a3949e4"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
