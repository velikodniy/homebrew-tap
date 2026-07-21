# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.4/opencode-darwin-arm64.zip"
      sha256 "04fb881b632b323c712dfda6dcbbc6fce736394f07ba76176e52d6665925d4e6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.4/opencode-darwin-x64.zip"
      sha256 "e177c532654572079981db1dce464a78adbaed9654a142848b2e81beb8c9f5c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.4/opencode-linux-arm64.tar.gz"
      sha256 "eba87efba3976d533a24cca0316f8ef375b5f8e797c0a95c25ee919700b7ba35"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.4/opencode-linux-x64.tar.gz"
      sha256 "bab463c3fb3224d388bb7cfad63f38703df9cf0be2cfd2ce8cb49d886b53a174"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
