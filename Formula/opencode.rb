# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.23/opencode-darwin-arm64.zip"
      sha256 "aceab53500e6408a464e6700c047955ceb6d26f63abd6609f3834deb25e246d3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.23/opencode-darwin-x64.zip"
      sha256 "eb0da38be4e544f3984f7639b1b4a720470a95a9fa651a638ddfa80fd546eb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.23/opencode-linux-arm64.tar.gz"
      sha256 "d5063cb6ec615b24e624008ca814409e0e6f1b9a1dadd34c00ebafb1a23aa32c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.23/opencode-linux-x64.tar.gz"
      sha256 "2e31e4fa878c7c062843efa312bd94edcc6c79d98f3b0ac9b0db92a97740104b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
