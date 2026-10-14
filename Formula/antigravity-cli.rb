# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.4-5524158944247808/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ede28149c568c69f549b796a6142ba592b44294111acf8b79cdbffae74e72147"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.4-5524158944247808/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "f4e5bc649cbbdc903516f5918194ffc74dc78014806dda6a6c6403df5382b4a2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.4-5524158944247808/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "56161a1849eff501fead19bc7c477ee80f26776bf470fda01c119cc345a1818c"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.4-5524158944247808/linux-x64/cli_linux_x64.tar.gz"
      sha256 "db5e81e8dee72d282cb1fb5fcd98dc5a43680730d71e3d637a67c874ec077ad3"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
