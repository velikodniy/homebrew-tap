# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.0/opencode-darwin-arm64.zip"
      sha256 "37bc6bc9b54de7dfcaef40f19df822276ddf142af38a3a73225eecb5767e9f26"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.0/opencode-darwin-x64.zip"
      sha256 "ff53599645bad14104e083e44b6dd48345c445ac06be2e79a8fc0acd814feea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.0/opencode-linux-arm64.tar.gz"
      sha256 "06ef602b9bc8a624fdc8e927673e7daa4cb70f1e57c5584023ca93631c4a476e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.0/opencode-linux-x64.tar.gz"
      sha256 "a741c43e737b2033f5e7ee151b162341e441034d6a64b172272a3f3a3729e87d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
