# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.32/opencode-darwin-arm64.zip"
      sha256 "48e8a49ca1641cb6db3eb2ff8e8b8f510014d4de25117968a9a350dd4d60c138"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.32/opencode-darwin-x64.zip"
      sha256 "df0a74743a8ab16f93d87eaf4845dd8488125497138318f968e0d47bd26611c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.32/opencode-linux-arm64.tar.gz"
      sha256 "2129e45224321a97e8d07ccc5ba692c39c4711b1890ac2c2111bd59d8f7ba366"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.32/opencode-linux-x64.tar.gz"
      sha256 "8adbda38d2fc21aba23657350a99e4a22ecf0de8390a0f0db419ca83b66ca72f"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
