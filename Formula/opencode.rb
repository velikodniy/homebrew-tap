# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.9/opencode-darwin-arm64.zip"
      sha256 "913d813a88ca4f6209b9c48e548bd376eef4d1e74c2bb113aa91aa96c784d332"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.9/opencode-darwin-x64.zip"
      sha256 "8174a53ab3f8bbcc633c6e7d914258f1572e133bd008882c489cb4dbac60115d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.9/opencode-linux-arm64.tar.gz"
      sha256 "8cc511f9794e575e5d3c4c2654930d05670186df649c26b50889ac73c65dde21"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.9/opencode-linux-x64.tar.gz"
      sha256 "85aeac95258d409d16ca34f1cfcd74c78d9d1a70b0a4154128b588e1405384f9"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
