# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.7-6190022064472064/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "4a9e98bd6f354f762f67b8dd0595eec2a50bb842fcd35e7c7777b67f48c3dea5"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.7-6190022064472064/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "a9a0110d80d1db24fd2653c16d69372396e5ed7cfef2121eefeb7881b3c06be2"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.7-6190022064472064/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "8c5a378a7f0170db9c6417546c7cf011265e0eff2a10571401c0d90db0641cda"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.7-6190022064472064/linux-x64/cli_linux_x64.tar.gz"
      sha256 "d6150a8d2a9e29a3d171b2325d6f66b6e7059628f4799a20c069b8ed8f78fdbb"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
