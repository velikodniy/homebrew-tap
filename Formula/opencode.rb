# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.9/opencode-darwin-arm64.zip"
      sha256 "6f998b7dabb9425bb348fd0d88afeb92a14422771231cec9b0f4374b947397e6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.9/opencode-darwin-x64.zip"
      sha256 "b9e6081f4db1f2066910f121258c23c8243438d22b1b80987d1569c5e40ef00e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.9/opencode-linux-arm64.tar.gz"
      sha256 "b16bd7593ea960a25d9c6849b3023bcd9b9244a6f51675341fd2052043b0670f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.9/opencode-linux-x64.tar.gz"
      sha256 "a0fa4b7b8bdacbd013e79a5f69d4220d36b545cd3ea296ba765f3016fa501b5b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
