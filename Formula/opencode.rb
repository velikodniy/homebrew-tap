# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.39/opencode-darwin-arm64.zip"
      sha256 "0aa84425000d848a2f9ea34a0c898fd168cb539bfd0979aea8d9265d086d3295"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.39/opencode-darwin-x64.zip"
      sha256 "bf2597b0089c364ff7367bd57d2ad3717cc9823a482b68673e02f8239dc55f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.39/opencode-linux-arm64.tar.gz"
      sha256 "9be73bf832567bab157a47e8be95ec1b9035015c92fd43e443091ce419ad730d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.39/opencode-linux-x64.tar.gz"
      sha256 "f678b47a066dcd263d4d035af913a9d91f27b31e4033d2bd307ada2b229f80c7"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
