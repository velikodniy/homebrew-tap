# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.8/opencode-darwin-arm64.zip"
      sha256 "4d72b08af4ee186a3f2f8462b6665b4a4c0c7ae8a9f26af187c57afef88858d7"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.8/opencode-darwin-x64.zip"
      sha256 "b952a52025aab521fa04040e5dd14a401cc8b0efa311a9d6073e2f40ddf1d2a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.8/opencode-linux-arm64.tar.gz"
      sha256 "cfb34a6a9a40f9a2adb0d0f3ab387b97307823d075572bfb54a553228adcebbd"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.8/opencode-linux-x64.tar.gz"
      sha256 "13fffc29227093462b7d14777ea6b804cfd94c2612819c101bbf933d862b1e5f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
