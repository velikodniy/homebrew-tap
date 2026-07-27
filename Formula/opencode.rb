# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.6/opencode-darwin-arm64.zip"
      sha256 "3f0bcf8e53ab338140ee31225363753164702768e55f0e3b43fd7e21f63121ce"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.6/opencode-darwin-x64.zip"
      sha256 "a47a81f73235e60325e3943a9a02f315d8e7904b708502be81e9ec4ab1611c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.6/opencode-linux-arm64.tar.gz"
      sha256 "9d3c24c72dd817f9ac3c73c4dad2ec5a31dc4c2b93071846a3cd6c8f5a8fe8d2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.6/opencode-linux-x64.tar.gz"
      sha256 "b5b7fa9509757b60249de8f22874b641a8b59a61b2e177b6d24e46805c7f352d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
