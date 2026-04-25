# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.24/opencode-darwin-arm64.zip"
      sha256 "5e61cbbd67d6ef8268e840aa031edf5a33f13d42812a39cdde1fb461ce7920a2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.24/opencode-darwin-x64.zip"
      sha256 "7ccfaabc5d1e351bad2f5edef688465048ec9029b3e21ecc52fc54b8e08ae750"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.24/opencode-linux-arm64.tar.gz"
      sha256 "304108f05063bd17ad6df62541b48e19980d8e36d5d507ae2ebf80920990c9a2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.24/opencode-linux-x64.tar.gz"
      sha256 "2edfc17bad3ecba54ae1d9753cef9eca686fdd8a0b0f4b785f9209ee0fc8a6d2"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
