# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.0/opencode-darwin-arm64.zip"
      sha256 "32ea91aa613e15ab3d15e4d294b34f349c048c528fc276e935f6ca38c3344b79"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.0/opencode-darwin-x64.zip"
      sha256 "ef54a86a1a1461b530dd3546f3f1da484ae4af8a3bf653c3e8f41f8535563561"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.0/opencode-linux-arm64.tar.gz"
      sha256 "9edb4995cf38b76e1456cf1da3f4ced864249cc25683239e15e14302c173400c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.0/opencode-linux-x64.tar.gz"
      sha256 "be5a2d1ff5a2799b0aee16efac924ddfa6d75f5374def8203e38bce792e98429"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
