# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.20/opencode-darwin-arm64.zip"
      sha256 "e6124c5c73576c678d24b09657b73281d96d67fc1c4ddd4714062811c51c81d5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.20/opencode-darwin-x64.zip"
      sha256 "2d07563b69b6599507620d3aed1be8d49aacb8c11e66646617bb5f3f735d69a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.20/opencode-linux-arm64.tar.gz"
      sha256 "3ca509044e06b8e7dacf08de735addee400788f80729c333fbf4581d0f77b4d3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.20/opencode-linux-x64.tar.gz"
      sha256 "1707133022382ea8c8cc5bc47ab1db52fa206bd9baf8d3ad4d862b489dbb448f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
