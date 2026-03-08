# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.21/opencode-darwin-arm64.zip"
      sha256 "432d53995797c496b3fb34dd11426bca82dd8e5741f5ba5096d505f895c39e28"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.21/opencode-darwin-x64.zip"
      sha256 "f78b9332e0dac7953b49fd272995d74abaad2dc9664b625fdd3db1d2ae7a26ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.21/opencode-linux-arm64.tar.gz"
      sha256 "87a4854ac7c06f6b79d539af0f5eb24644881e9b57bc4d46c188fb915ecb68f1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.21/opencode-linux-x64.tar.gz"
      sha256 "4ccd5ee8322ff97f9321349a064ddc4c2b9b59b335336d2d2aa00670af200617"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
