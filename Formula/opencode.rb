# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.33/opencode-darwin-arm64.zip"
      sha256 "ae9142115ca1998941ce41ee379e502c13a7b4861c80fd5c1a70477a5f85dba3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.33/opencode-darwin-x64.zip"
      sha256 "56c252b0bd20a430e8b3d39e31763af717540d07a14963fb36421f3abdfe7f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.33/opencode-linux-arm64.tar.gz"
      sha256 "3cfa593defe2b8fbfb55f05f1671a64666aeca2cec1be81a9db7d3bb1694b4ed"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.33/opencode-linux-x64.tar.gz"
      sha256 "ab3de3d40a67573419ec74916210cf90dcf8c180dc9d8052db71ac9f55c28810"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
