# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.10/opencode-darwin-arm64.zip"
      sha256 "641fe2e65e42db76c2d32db5f85573c3682a8c72f82d01568a922a8feccc4658"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.10/opencode-darwin-x64.zip"
      sha256 "b2d9e161b3c6f398ab8a21a129455550c7b79b68579bb542dbc986f10b084ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.10/opencode-linux-arm64.tar.gz"
      sha256 "41ae3041e91b894e4c0dc06a73a9a2796254bf390ffb99626a43af5e2912d170"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.10/opencode-linux-x64.tar.gz"
      sha256 "6b1113da704253fb4da12b41e4236acecb9f2b62949c945f6eeacaa15111b976"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
