# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.21/opencode-darwin-arm64.zip"
      sha256 "72f4b6029af185eb030995cfa062d038914e3142c9aa38f714fe56448e6e87d2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.21/opencode-darwin-x64.zip"
      sha256 "405559e5873a9131ff6bcafc413f46d4f199b4401f232d00bcd301d97ea7cdfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.21/opencode-linux-arm64.tar.gz"
      sha256 "d30d2cba74617f4e7b96e25563c9572ffe453f9eae70fc0df16286813537ee72"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.21/opencode-linux-x64.tar.gz"
      sha256 "d910c3ed7613bb5791a328904615d41cc25b7d3a6b470e3199ab0426a995b38a"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
