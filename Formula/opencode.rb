# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.5/opencode-darwin-arm64.zip"
      sha256 "9cf68a67f6fdd0a5212daa0fcbca3dbc05fff788dc6c6214aa2f2f4a7caba815"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.5/opencode-darwin-x64.zip"
      sha256 "fa8168407fcb06ef136bc98e8a18aacf042117f97c89ec944e0f6fe930269ec9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.5/opencode-linux-arm64.tar.gz"
      sha256 "a6244ecce03f303a8945fae330f17964469fc0780fa3555cde80fb97ac46f2fb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.5/opencode-linux-x64.tar.gz"
      sha256 "bf6f75da089b22073bcf23754cc3be351f713363164e5bdcd3e49501c811b1c5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
