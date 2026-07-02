# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.0.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.15-5090589570629632/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "61b17465635de291036b50883f4b8c3dd4ac9af22969853019acff526274f567"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.15-5090589570629632/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "be3a397eb80c58b3190f4e3860613ba5cac558f763d64a052e46ddbe95a3a57f"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.15-5090589570629632/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "2a816dcced6aefe8f9cc0281a3d9d00af87a8a6f39789f2030e32c92d3e864f6"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.0.15-5090589570629632/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d125764f115fa53d77081ef1e2a6fa9b3a3fde8799a0d91d811a4bee4b2b2fb7"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
