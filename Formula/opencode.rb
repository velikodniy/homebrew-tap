# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.27/opencode-darwin-arm64.zip"
      sha256 "fa680fa79086c7509d3a2c21e49c9264b803da7c0f1b7807ed842b8e37325597"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.27/opencode-darwin-x64.zip"
      sha256 "fc719db27acbc817ff2a4df2bbaa788e02976ddc26a96c84de4fdbe663714b8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.27/opencode-linux-arm64.tar.gz"
      sha256 "bcd91a3ebe9480ffb1702e5c71168d451150421acc99c6d1abf5edc5e2cb39f5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.27/opencode-linux-x64.tar.gz"
      sha256 "6fe3820b145857f7ff507d2826058b7acf1fce8258def1498468dd43809e69e8"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
