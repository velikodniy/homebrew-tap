# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.22/opencode-darwin-arm64.zip"
      sha256 "cdea83be4d9e12f0fb4b2168b122f01a3d0243593caf4ec81041c5e6d717f8fa"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.22/opencode-darwin-x64.zip"
      sha256 "8d5ff5f3864e8c255771eeaf1d4df35c54154972dcbbe93b4baaaa6b3223e3d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.22/opencode-linux-arm64.tar.gz"
      sha256 "b8bb3cf495348bd41233ed39f3b9d09be7560924705b9c0ea245bbef1d4597c2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.22/opencode-linux-x64.tar.gz"
      sha256 "6946cd20989c7736a321b9bad37130dcc3227467b178fd39e20a4a0284ee8165"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
