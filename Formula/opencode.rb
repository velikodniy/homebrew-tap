# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.2/opencode-darwin-arm64.zip"
      sha256 "01585ff4d15820bd3a878e4bc7cacfb1ea75e236d1fed8c2f5f3595edc8b7ab5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.2/opencode-darwin-x64.zip"
      sha256 "1844bb6cbba789d7bb4e6b417feff73407f864ce68d6fb6d73cb2860870244fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.2/opencode-linux-arm64.tar.gz"
      sha256 "eb1d5876c70675cfda93c4a1c4385d727412fae73154f1f005d155626df5b559"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.16.2/opencode-linux-x64.tar.gz"
      sha256 "06a79c5bb7f8d01716b2440712cf67facd36db59188809aeb232374b206bd429"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
