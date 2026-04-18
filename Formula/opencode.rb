# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.11/opencode-darwin-arm64.zip"
      sha256 "21e4d48b0c6869cab6e2274c6946ebe3076f1aeb63742a5081a646fb3b33fda1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.11/opencode-darwin-x64.zip"
      sha256 "40ede30154e2c4f9fbea52a5f1afe76fea22b3883b632d289b81ce03e5679f88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.11/opencode-linux-arm64.tar.gz"
      sha256 "439d6b55945de9c359a934dc896d52f46c66b61758177345b35d4710b40506eb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.11/opencode-linux-x64.tar.gz"
      sha256 "a4ea829ebe3d4afba52bbf039baf2546aa098c4e5411d5f19487d8ef9bd9f68c"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
