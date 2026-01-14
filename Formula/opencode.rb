# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.19/opencode-darwin-arm64.zip"
      sha256 "5418d3361c28021a01a723dd1a09e090c42a073fef28ff6d3bddfee0f1e5755f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.19/opencode-darwin-x64.zip"
      sha256 "98127691a9e8dc73198bf43a8745ab10946ed0ceba911756ee9e30e7520e69e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.19/opencode-linux-arm64.tar.gz"
      sha256 "4e41d7b127f15f344a265545b4f83e79d08305e8ec9459cdeb7939ea20c0af00"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.19/opencode-linux-x64.tar.gz"
      sha256 "093614b7dfdab7b64109be370d96722bdf6918f1edb662861d13b11ddedc9405"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
