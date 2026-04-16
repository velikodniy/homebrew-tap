# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.6/opencode-darwin-arm64.zip"
      sha256 "16d781944994eaa98a1037b2c367a4ffb9133ae449b15c48984f339ea2c782a5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.6/opencode-darwin-x64.zip"
      sha256 "963a0edd24dee19d7af0db88fc9cfd2675d33e6fd20d0046aa52d5aebe724361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.6/opencode-linux-arm64.tar.gz"
      sha256 "4cbab9cf91280b9443daa27e54bcb8a030ef579857ef2cdd3a8e6521422c3d0d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.6/opencode-linux-x64.tar.gz"
      sha256 "8ebadcc751be642208257d3de4e4574199ab66e8ebe3f9983e63d784896afc26"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
