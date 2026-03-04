# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.16/opencode-darwin-arm64.zip"
      sha256 "501e94721277b485e1d98508804ce6fea72d00faab00ea842c5edd4c42917a5a"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.16/opencode-darwin-x64.zip"
      sha256 "df5b60cda793ec0cabf65fc8b99b46aa463254431dc516e8702e2e9bd0ad8504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.16/opencode-linux-arm64.tar.gz"
      sha256 "d6d43eca133a6a7452b1f1c7a90ccea193ce3dd184e8f89c10f72439933a1949"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.2.16/opencode-linux-x64.tar.gz"
      sha256 "7328f659bfdf5633e85d32151b6d5e394fecee09647a63a8d8df255bc212f0f4"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
