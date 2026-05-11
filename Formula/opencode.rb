# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.48/opencode-darwin-arm64.zip"
      sha256 "517d3d873f624a63da2d4de1ea64cf3bdb8af260f9942814e78788a6d7962d24"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.48/opencode-darwin-x64.zip"
      sha256 "912fd278baacaac93c710f36b8678f277bb89415a6086214aa5ff89d7917d97e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.48/opencode-linux-arm64.tar.gz"
      sha256 "444179de5504ed3d68c55449e2af8ed2c92cd7d5f84ec1e8f306cac0fe49bd50"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.48/opencode-linux-x64.tar.gz"
      sha256 "d06125de074af9c17be649137e2bef59b774c7668130b0086f9bd99ba67baf82"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
