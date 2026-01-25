# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.35/opencode-darwin-arm64.zip"
      sha256 "ff67b1dbd21a9053e97357ed8f13a5f67081c43dcbc176b190d53a8bf43949e1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.35/opencode-darwin-x64.zip"
      sha256 "22e711b94220627959aec93cfffc782ccbc2c152055626f9cdd21fbd09cf5da8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.35/opencode-linux-arm64.tar.gz"
      sha256 "e7544ae14afb10e75d28a3623b1fd33d60e17f372106665566ca4e085c2b157b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.35/opencode-linux-x64.tar.gz"
      sha256 "451f5a36e2875b5540adf55e8cc9e144902b44959a6f31899fc21876b38b31ae"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
