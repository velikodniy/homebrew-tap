# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.26/opencode-darwin-arm64.zip"
      sha256 "214b97f623f870478468aad2be159544ab312f3354b23402c75ae8853de3e821"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.26/opencode-darwin-x64.zip"
      sha256 "950c9918df4c923f6b9e9842f81974fd341bfbf793fda768119c4d17159cdc87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.26/opencode-linux-arm64.tar.gz"
      sha256 "c2f387dcef451379eedd51702c029b190667a9cf7069037d9d19f258b059a61c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.26/opencode-linux-x64.tar.gz"
      sha256 "3c7a6dd1dc46e3e39a60e0e2f371176fbf3d9681e29b670991491f1172062454"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
