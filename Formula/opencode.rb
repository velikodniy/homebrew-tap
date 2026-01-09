# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.8/opencode-darwin-arm64.zip"
      sha256 "94229f68f6bb82891a24de0b081024272bd3f03d692f070bb962188553f56a2f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.8/opencode-darwin-x64.zip"
      sha256 "1cd6ad66a2729a29e6a77679ce9f0d222d6af6db774b82526a82f01224ae06d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.8/opencode-linux-arm64.tar.gz"
      sha256 "64f1451fe6f498377fcc5f6dbdb80e707293fb73361f9acceee7443cfc27a589"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.8/opencode-linux-x64.tar.gz"
      sha256 "c47275ad4ec43c8412ad2107c6f00e720ece1297584c370c32d466052d61188b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
