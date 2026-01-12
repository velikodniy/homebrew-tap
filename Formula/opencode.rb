# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.13/opencode-darwin-arm64.zip"
      sha256 "fb4812aae9321bb51376634e2f842d14b80252f63ba01a313deed4a09b72c79c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.13/opencode-darwin-x64.zip"
      sha256 "b170306554e5efff34f83f4f45b39e85ccee19a7c43bdb41b2bf14466f9a59e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.13/opencode-linux-arm64.tar.gz"
      sha256 "083d403923f97bc729c7cbf8992782c8d94a8d7b134b1e0b32fe465f4deb8ab4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.13/opencode-linux-x64.tar.gz"
      sha256 "cccaaa68abded212c150d987bf9454614865b24bbd5f1d0012f89afa62c5a084"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
