# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.7/opencode-darwin-arm64.zip"
      sha256 "ad8fb2c86e7d538e3dd9d8ae079a7f215d944655ee7d9dbe6b75b135a53176de"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.7/opencode-darwin-x64.zip"
      sha256 "ca99fb3e108cc5415ba14c05a31fb44ab5b18eeeb31956c6c77f56b956596c99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.7/opencode-linux-arm64.tar.gz"
      sha256 "17e358932f603fd3e028c57dd73483f387e63276aef5dac6ffb7dc29b8ab2fa1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.7/opencode-linux-x64.tar.gz"
      sha256 "57aaa94595f5074dccada1713f53a0a055e720a4a34aa93026e62cd869e50b6a"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
