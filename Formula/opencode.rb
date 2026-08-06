# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.14/opencode-darwin-arm64.zip"
      sha256 "ad8125bb649086eb9210a87bbd27ac453a526e2432aebd4d3c9853e2d42e3291"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.14/opencode-darwin-x64.zip"
      sha256 "78b2e99a9094ce7a4fb38416990d2b9b23e5f99a9992a37b04fb861f24c48925"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.14/opencode-linux-arm64.tar.gz"
      sha256 "27ede7aa2080002459d8c970a40016bbef49cd13bb467302777da67467f1602d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.14/opencode-linux-x64.tar.gz"
      sha256 "f23980ba2aebfbfa53948e55e213d3f2a53740fd7326553828e89ad27e970572"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
