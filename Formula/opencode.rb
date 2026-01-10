# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.10/opencode-darwin-arm64.zip"
      sha256 "f61c8d35a66bcc2b34ac0bd5a3b40b873d98b71809b505b7621243a34ec7aa4c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.10/opencode-darwin-x64.zip"
      sha256 "6afbc8af589e6f73a487e81c24741020925a25373be6beac6f065389f121a1da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.10/opencode-linux-arm64.tar.gz"
      sha256 "dbb03670aa9bd257b97aa32b8b2f422a46479d7b9dce24acf47f677684024bed"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.10/opencode-linux-x64.tar.gz"
      sha256 "6af0cfa68e940988f6bb60ad6f59b237d55635297e5e4d63461a31af11111535"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
