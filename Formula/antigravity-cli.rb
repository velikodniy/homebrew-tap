# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.11-4956531888881664/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "97cb909d30dbb2bf232d3d10e5dbc8bc008f0e7030400b515a182e490bdd6f08"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.11-4956531888881664/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "a63a189a59a0bd1aeb70236aca0754278f418a4ae6d8ef99c8e3616bfa7a3e73"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.11-4956531888881664/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f3a03713e3e3cc84477e115d3fd9de1c232386b09384ba8690df6fc0cb0abbf3"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.11-4956531888881664/linux-x64/cli_linux_x64.tar.gz"
      sha256 "caef1dd4c99c57dee1d1dec2b6c67726df535ea49ec71eabadd36daff8223d19"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
