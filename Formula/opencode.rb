# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.6/opencode-darwin-arm64.zip"
      sha256 "c0be3f34dde2fdcb31b25120f303c6ed5b69b828f16e5e0fbecff21a882adda1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.6/opencode-darwin-x64.zip"
      sha256 "39aabb10005059f80f007a119a33405dcd46325300993eb6cbcc961c7243dd31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.6/opencode-linux-arm64.tar.gz"
      sha256 "5b68c1f4c5e75b4134e664cc8f36d634d64208d4fcfe5bcf3b48bab699c2dbac"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.6/opencode-linux-x64.tar.gz"
      sha256 "47734e08968b30cc22a0bffb6d9feeed76ad4aa743213a12122040392d09a057"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
