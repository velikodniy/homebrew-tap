# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.26/opencode-darwin-arm64.zip"
      sha256 "b05d383149a5a417140e8edebd83064142fa36e74fdfcd5f791919dcb12fd33a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.26/opencode-darwin-x64.zip"
      sha256 "dc1c641bc391f28370c30e5ca95d51b0bb355ab5deb387f2d2adc3d5ad56c68b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.26/opencode-linux-arm64.tar.gz"
      sha256 "90b99cc2356fea188d67352418ad7223559841178142f719848ca2c88a689c3e"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.26/opencode-linux-x64.tar.gz"
      sha256 "7c20c1ffa91bcca0ac903752260bcc36307dff656833baead2f5ef3b224b16c6"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
