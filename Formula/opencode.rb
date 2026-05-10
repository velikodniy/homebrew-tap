# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.46/opencode-darwin-arm64.zip"
      sha256 "fe256b6dd8643c9404b69048fe5dd650765b8c3a04a9ec3100dc28d7ac92b8ae"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.46/opencode-darwin-x64.zip"
      sha256 "be42104ee4f137271ac529eb456628852b1a286bcec5aea7fbed4511bd2b1c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.46/opencode-linux-arm64.tar.gz"
      sha256 "eb35ea4a7c777882bcf9d911ee9c8f25e6a4227bbdeda910aa2471deacf3291a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.46/opencode-linux-x64.tar.gz"
      sha256 "19d80c40396930e96afe3f63000bc28d9094760daa16c7b1d7e76dc999cfebcb"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
