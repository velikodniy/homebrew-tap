# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.4/opencode-darwin-arm64.zip"
      sha256 "c400a2f8c8ab7e99478a7f4dd1a466b57bf33888e520d85c55780a5464c4b689"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.4/opencode-darwin-x64.zip"
      sha256 "123ebd72609c4f8dbae0485cdac39b9aedfeb6576b2eef64f2e73152b1de82f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.4/opencode-linux-arm64.tar.gz"
      sha256 "8568230ccd847dc93e95b9f6894379077d3e014a16b48040743573e77c23e85f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.4/opencode-linux-x64.tar.gz"
      sha256 "849bd6b3d959a1d2ef200ed1634a51c79a45ca236aa26665d75debd694805cce"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
