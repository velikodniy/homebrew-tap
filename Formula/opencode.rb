# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.3/opencode-darwin-arm64.zip"
      sha256 "b49948f96d8e92c577d54854e2f038389d03c3dfbbeacc44643b73123210fd13"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.3/opencode-darwin-x64.zip"
      sha256 "3bfa67a567dee440a8800e21ba0b208e8c74d6400a7dfae35eb900f815a90f81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.3/opencode-linux-arm64.tar.gz"
      sha256 "861b8c66ced51d6d9a66ea773ce47ede663a44bd17d837b9c21acfa3468801e5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.3/opencode-linux-x64.tar.gz"
      sha256 "d4bd238a2c1ff56aca1cd3397d21a0a317f5992234517a7f8e2afbbd72010a7d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
