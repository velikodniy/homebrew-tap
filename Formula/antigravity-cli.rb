# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.5-5009297080451072/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "47f70951b117d404ade49c3d5b09cad91455999d6e59fc2ee2e987aa92bc1285"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.5-5009297080451072/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "7214eabe5407005320e27826fa40f6f1b03a581dfc3157302480bc6247da7152"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.5-5009297080451072/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "b7a371a126b8de02c3728fe736fbebc87272a5144c7647476572b507c3264eca"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.5-5009297080451072/linux-x64/cli_linux_x64.tar.gz"
      sha256 "2101c31fbc33189999f44c08abd2df4937d002e78fce5a92e71f0d0a248fdccc"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
