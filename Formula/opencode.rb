# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.18/opencode-darwin-arm64.zip"
      sha256 "7dc1eb25b79a85ec882df9560a2b1d84927a6f9981165a56f562ab704a312529"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.18/opencode-darwin-x64.zip"
      sha256 "7894e4ad5c2a185b0efe76cfd1895de5d695ded2d9b1f7169fba1170d6cbfeeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.18/opencode-linux-arm64.tar.gz"
      sha256 "cd8b3cd13bef12e29f32e0f32e5ca48e29159cf6cd32ddee8b3be97438a0242c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.18/opencode-linux-x64.tar.gz"
      sha256 "45fac9f9a293f73ebe82e305b43c30cad98d9f3ec2e510de438358335966a9ad"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
