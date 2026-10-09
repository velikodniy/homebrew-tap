# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.2-5813501495738368/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "133d497faa7ddd3aa7754d25fa1ba17afa9175eee6c2baa9e3a92ca9b345a50f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.2-5813501495738368/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "fb15938bb1b8791c45839b5626f443bf533624ebdc466251cf37cc69a74477af"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.2-5813501495738368/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "f904ce9ca50ee7d2010bd8063a864ce37c31585c710af451bab66be6e4b59a74"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.3.2-5813501495738368/linux-x64/cli_linux_x64.tar.gz"
      sha256 "bf8504c72097c97de77d271b160bdb10b956031cf79cf95d96cb948df161c25f"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
