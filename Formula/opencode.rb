# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.1/opencode-darwin-arm64.zip"
      sha256 "fd2e1abc18a446591314f83821779bbb1a4840b1762ddef22a4b637ea63acdf6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.1/opencode-darwin-x64.zip"
      sha256 "7120750613db9cfef35806df5ed8bed3facc1c2c997972a31665a0f8c71adf03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.1/opencode-linux-arm64.tar.gz"
      sha256 "887e2ba8370895e8c20a0d9648413afdeadc1c8197685da8ce2b5c7a5c72bae0"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.1/opencode-linux-x64.tar.gz"
      sha256 "9ecce27cf529ade5f177fab478b4876b5c31d9ddc8216b994816acf192159511"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
