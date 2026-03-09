# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.22/opencode-darwin-arm64.zip"
      sha256 "fddbd38cc49666b6c331e7461ad776069eb9ff7a66ad864f7ef9d84ca0c9ac3b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.22/opencode-darwin-x64.zip"
      sha256 "5171547cbcbbd8801ea6ebc8a0ba040125af000022ba8f0d039372c72de22205"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.22/opencode-linux-arm64.tar.gz"
      sha256 "2d1a6bf4e1e3622a7ba3192c4421e1a7f01670a569a0dea02d5d74473d6d746b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.22/opencode-linux-x64.tar.gz"
      sha256 "a02e59726a8496d6398c7ab6e87442530d08821f1a0c6b6f83307cf5dc00e9c4"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
