# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.39/opencode-darwin-arm64.zip"
      sha256 "7eb8dd261048cacce8710846e37c308403118e79362306b25a35a0e00cbf2ce5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.39/opencode-darwin-x64.zip"
      sha256 "aeb7637da594e286ef687a4b59df0a75ac336d5454f3b43391468f2a69a77bb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.39/opencode-linux-arm64.tar.gz"
      sha256 "f66fffbf512671bf3b921d628880e8b101d22924a55bab0da4b374c7d7b4f3b6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.39/opencode-linux-x64.tar.gz"
      sha256 "f34bda4a81a7e0fe29f63209d3d9a1242899a2269181e2c8e11106558651b878"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
