# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.22/opencode-darwin-arm64.zip"
      sha256 "79ce381136a0981953ccc329417678498b25b8d32c2a1a7b55ee5ed25590f94c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.22/opencode-darwin-x64.zip"
      sha256 "d1af85e1e63a0421f67d3e70c61c7b56393c7c32ff5ef4e49f02f3b1f29c3770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.22/opencode-linux-arm64.tar.gz"
      sha256 "7243e7a417d190efa1b7b0981dbf0d6c8aa78ba2fb0181ea23336fdbb51c5178"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.22/opencode-linux-x64.tar.gz"
      sha256 "23eca6a892c6b53c0f9ba2333b6906bdc31902634631d54cf17500e7e8cbfa20"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
