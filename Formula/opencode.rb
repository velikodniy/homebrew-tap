# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.31/opencode-darwin-arm64.zip"
      sha256 "f3a2386a3ccdb1e8733af766600a0e2c35a001adaaa0d31429ff81c0dcd32180"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.31/opencode-darwin-x64.zip"
      sha256 "6921c770be5e037fc24e9f745fda235016f7b2e51ed79fb4b004c6e19b5ac942"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.31/opencode-linux-arm64.tar.gz"
      sha256 "d8867e77b901dd04e707f459f44b3e28f23a6f0c2d740f1bb8af6f4b64ac19f7"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.31/opencode-linux-x64.tar.gz"
      sha256 "5d3853e29c81d7a134915690625009f5736ca84070529e69796cf62e12232c9e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
