# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.25/opencode-darwin-arm64.zip"
      sha256 "606b09722d98069605e16037fb8c3c7c8ebbfed9ba713079a5efb2e5b065ae27"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.25/opencode-darwin-x64.zip"
      sha256 "6c5c569f779b197e1df6390c62278bbdf0e73e7cc248a429648680c63a6f3f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.25/opencode-linux-arm64.tar.gz"
      sha256 "35ef77897425e41b5183a2c21ac4fb1d4d944d82a94e3c920f57b5490af11ac5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.25/opencode-linux-x64.tar.gz"
      sha256 "58a3729a6f3432dd6d2917fcc4a949788891a035818646ad480e12c947f56e78"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
