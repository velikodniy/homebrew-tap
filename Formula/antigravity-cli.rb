# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.2.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.11-6016716732497920/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "437a813cd7c606ccbb3180886887fc69361c28fe8e880327b3b82201afa900cc"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.11-6016716732497920/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "ee0bd5b09ba93f71627b7f709d070ba80c8aa6566aec264a1419de24c35c2f37"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.11-6016716732497920/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "01513bc61f9592353045ba801ebb407fbccb8984fcbfde591bc6b681b24e92bc"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.2.11-6016716732497920/linux-x64/cli_linux_x64.tar.gz"
      sha256 "c91c62c5e6fa954f5a7e1d7b9ad417d749db4aa60a4ba0b3d604dec1b645d190"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
