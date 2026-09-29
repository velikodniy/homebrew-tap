# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.33/opencode-darwin-arm64.zip"
      sha256 "24b12873e605b3db3387cb355f43ba7451cd6065c180d8c188663337d2eeb553"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.33/opencode-darwin-x64.zip"
      sha256 "90c7e7d9ffa0d8691ca0f15b42a7b89b72e17a4d26074b9ef06559ff87b221ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.33/opencode-linux-arm64.tar.gz"
      sha256 "c63486624621924bf43be5c01abd252885661a734814224f6d70188a33aea858"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.33/opencode-linux-x64.tar.gz"
      sha256 "e546123213ae47909a4268692aa4b94950d011afe9cac9938753a2194f1c16d5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
