# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.15/opencode-darwin-arm64.zip"
      sha256 "4780615eac71e2d052d5a7c975ec1f5d296dae1301635fcf1db96620094a2ba6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.15/opencode-darwin-x64.zip"
      sha256 "0719179cf5da2e32f39dfce396218f04dbb3d2abea5ac626766a7002559ae158"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.15/opencode-linux-arm64.tar.gz"
      sha256 "127f6088266a046baa6c18c313f7af5bef0a4a05a7beedb94ca1566807dc5945"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.3.15/opencode-linux-x64.tar.gz"
      sha256 "ee9971caebdc1dab1a3f60349f2306875e97a7ddf713628cf89b82c28280e971"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
