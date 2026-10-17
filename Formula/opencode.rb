# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.3/opencode-darwin-arm64.zip"
      sha256 "c2d0fecd27acf6e08be02c1f5d384614d07495587766bcc4a6bff3971749bb64"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.3/opencode-darwin-x64.zip"
      sha256 "4e29dbe2f61ace728370523c88027d0742b3a79edcdd2c70e404f616d4ef8f36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.3/opencode-linux-arm64.tar.gz"
      sha256 "7900818a6a98881edbbadab4b7525940eff3b9750040c200481f9f56cacee405"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.19.3/opencode-linux-x64.tar.gz"
      sha256 "13a8fb2978302071b86f9d7e00da9c8895f9cd846978379c3bdc6a5333536c9b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
