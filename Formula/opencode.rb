# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.11/opencode-darwin-arm64.zip"
      sha256 "40723446013dea8252eea4f180d707f75e805af54ee85a14fd7c126513ba8342"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.11/opencode-darwin-x64.zip"
      sha256 "7f3e517bb9c7e671e8d311feecf890ccb336a20a0653fb8953b6a117c9750701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.11/opencode-linux-arm64.tar.gz"
      sha256 "6c0ae8212401c78f9dcddead35d385953c7a44eb1616309365b58503dbd1b4cd"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.11/opencode-linux-x64.tar.gz"
      sha256 "6aefcbbb7f04cdb4642be5208ddbfabb3c3d274f816bf42bff72eea5c244dca2"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
