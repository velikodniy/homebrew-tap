# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.25/opencode-darwin-arm64.zip"
      sha256 "19d2bc2a6d60c42ad7daec8f042ccbc0a3987709e73dc5acb1cfcd8de7c80b86"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.25/opencode-darwin-x64.zip"
      sha256 "11bc91dd12a4de4fd6162beb9cfa37071d42d0a21007f583bf09dedd72dd57ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.25/opencode-linux-arm64.tar.gz"
      sha256 "740865cf472bcab47d2e4d37f0e0abe4b3755731874839128fe788e99395a0a8"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.25/opencode-linux-x64.tar.gz"
      sha256 "cab27bac5ae5f3706263e573c815cd724eafad54ef964867db36278181e64611"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
