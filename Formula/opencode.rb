# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.3/opencode-darwin-arm64.zip"
      sha256 "5087853a26acab7739f676532eaf26f1464345a0ddd96331e490b86debcb4ba2"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.3/opencode-darwin-x64.zip"
      sha256 "d07b9996f5bd149d56f87e456eafca389060218ae214003d0289a37321d51160"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.3/opencode-linux-arm64.tar.gz"
      sha256 "4f2a3e3040c6dc6717961b1034e7ae651940c449065d316c6c6e17a4b78293da"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.3/opencode-linux-x64.tar.gz"
      sha256 "f8ae8678c9bccdbaf99777f36ff2d5efe689d473384f2e94b84d6cda256d2540"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
