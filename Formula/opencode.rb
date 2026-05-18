# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.4/opencode-darwin-arm64.zip"
      sha256 "20fb7ae9a6b9876832850b7899304c38261ac53761cb77a2052be49b02fd27e6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.4/opencode-darwin-x64.zip"
      sha256 "a2ac8745949960467299889435a03d0de1719f2b431d46431d4a5e106bb5c8da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.4/opencode-linux-arm64.tar.gz"
      sha256 "978f070e280c36ea6fd9a03d64f813028dbc2434077ad5cb6aecf37423e156d7"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.4/opencode-linux-x64.tar.gz"
      sha256 "f0734928d5df360777f51f807df18b28c1d0c006f806ad0bd35a2420fabd0835"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
