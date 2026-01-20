# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.26/opencode-darwin-arm64.zip"
      sha256 "93d9f81ece04fd2db10184357209f37f1af4338e88e0a0008e102a673b1a5975"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.26/opencode-darwin-x64.zip"
      sha256 "2e86d66d1f14dad0f8ba27652b147561db632cda653a5e272db9d310c110c27c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.26/opencode-linux-arm64.tar.gz"
      sha256 "8e203288c1071da8cf6db87159c1ad5808e12efaeab60a22152d7b5aa5bce772"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.26/opencode-linux-x64.tar.gz"
      sha256 "ac5f426b82bf9d7a89d857d5fe9bb75cb2fd670804e03e97e5dda9373bf47be4"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
