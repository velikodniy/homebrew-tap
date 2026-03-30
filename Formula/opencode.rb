# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.6/opencode-darwin-arm64.zip"
      sha256 "b80ba5d77c53fabe46d67eb1cd7b30a02f802012fb74f04e004a4740e81229a4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.6/opencode-darwin-x64.zip"
      sha256 "469613677aa200dc9882d252cb5da5b62ceb8e622c415e504a89d5658ae11271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.6/opencode-linux-arm64.tar.gz"
      sha256 "f8bf31bff067129108bbf5071ba30c5bbff8c68359df16abf5b5682d3f243819"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.6/opencode-linux-x64.tar.gz"
      sha256 "013ecd11bb1986d4730f31a50872a7793c881317f6dd43f2f332fd755d0a5a45"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
