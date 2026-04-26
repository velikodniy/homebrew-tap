# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.25/opencode-darwin-arm64.zip"
      sha256 "dafff66a6d87307871385410ba4196eecf2847220e35b052c3914614c6915b4e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.25/opencode-darwin-x64.zip"
      sha256 "94f73ae369df2cb2fbe8def3b5de51f9840d82abcdc226c95d347981811e9696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.25/opencode-linux-arm64.tar.gz"
      sha256 "0cee21589d4936619bcd6131342121c0d20ef245fbec314009c89b3f9338348d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.25/opencode-linux-x64.tar.gz"
      sha256 "6542db973fbf404707d275d824fcd7eef20a8003788114eb85067402daf730db"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
