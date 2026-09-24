# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.9-5905287731871744/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "2b2671c846f62cb1159817517e4a9fff3e9a2ffe01f9dd0b3e227298d88b46f6"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.9-5905287731871744/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "84c284693bc59334066263a397f6da8a34490b2d8a71dea6d67edc9852ef20b6"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.9-5905287731871744/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "8a63cf4c4f559e2ff91bd46fbdf015ca7937415805d0cff82015b9cb9dbbdfcd"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.9-5905287731871744/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d9850373f3df866011024a961fa9740cc4adaac060eebe9c70fbf263ac6b2624"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
