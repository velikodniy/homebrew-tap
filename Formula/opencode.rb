# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-darwin-arm64.zip"
      sha256 "a5e43d6887386efc7d68ce49ae28e3bbdfdee3dfd1d7169b612c3ce67e53b1e8"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-darwin-x64.zip"
      sha256 "7453007e58ff122401438d95ccb24334874b5908dcaee77883f96c23395d5710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-linux-arm64.tar.gz"
      sha256 "4111a55c2a02c0fac314bd51e9a2330280e6d29d2b85b9554fff6d62612566ed"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-linux-x64.tar.gz"
      sha256 "55007246858165496ff85ba1c2b648f7421e8e2013bf4189a680c9ff8e699d17"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
