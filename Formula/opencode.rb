# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.41/opencode-darwin-arm64.zip"
      sha256 "e76893f891d005a576730faa124e78e5d40505073e55bdb7d509d3b982427414"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.41/opencode-darwin-x64.zip"
      sha256 "d91d7ce0d5b4cc81b3a207e19886f87511db2ea58b612241f6fcc5fbec08f043"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.41/opencode-linux-arm64.tar.gz"
      sha256 "ede86678064cdef5cef750abfb985beee0741ec8c0606d50676cef856d579823"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.41/opencode-linux-x64.tar.gz"
      sha256 "19fef389c9759ea91e3399cf3d145cc874d7702794883ccb985ad0af301dc6d6"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
