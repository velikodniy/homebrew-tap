# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.10/opencode-darwin-arm64.zip"
      sha256 "b9074b933e0db458243f7ba20d8c3bf6a85e679b400c62df0eafd3abadd725ed"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.10/opencode-darwin-x64.zip"
      sha256 "ef14f611d0c3e68d9488fd0573b3bc2185dfd4ccb27755f8389018dba3f79539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.10/opencode-linux-arm64.tar.gz"
      sha256 "def583a68cb155cddd9523e52139a5b915e981eef17a274c8c8171a3ee828ae2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.10/opencode-linux-x64.tar.gz"
      sha256 "a4c0c94a7fdbf637e3ae479c046ca49e925370b4cee503dfba7ab677a13cd0c5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
