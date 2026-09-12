# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.1-5123043593420800/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "b80425e10a7b92f20679eee5df3bb18e3f9154b3653a373fad47e2f72614248e"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.1-5123043593420800/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "c77c6f782c6f79dc4ad831e833ce71249f90cfddf8e2e4579719c51709f08a16"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.1-5123043593420800/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "882d9160972d09a721422baa554999ad969bc9b3fa680e866a981398f937f19f"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.1-5123043593420800/linux-x64/cli_linux_x64.tar.gz"
      sha256 "6a2c53db6c681fc114f9a1e499e7b4771357ab2852242e56acbd43197d4807f9"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
