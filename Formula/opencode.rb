# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.47/opencode-darwin-arm64.zip"
      sha256 "d83d2bb356c7f9500e4124126c6b8df60c13c88669b66e3853823b741cde08b5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.47/opencode-darwin-x64.zip"
      sha256 "e32e78a93738e54f558636a87b7a936489999db79c396189a68624d637c1715e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.47/opencode-linux-arm64.tar.gz"
      sha256 "869fab26e9c83d4092475b4e1a0f928e152ca46ee6698b58011c02ef46008f3f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.47/opencode-linux-x64.tar.gz"
      sha256 "f87592cdbab12d0cc598876a36a573986e8d19dd59ba6b15d9d1fb039af5d57a"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
