# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.15/opencode-darwin-arm64.zip"
      sha256 "9667289c143d1fbdd440055af4041bb432f44b07ddf0aef048a8c7f2f7c65e2d"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.15/opencode-darwin-x64.zip"
      sha256 "4bc40c124a1b419cfa922cadb3d68c2d67b2082276360b3ca36003aa350d9ad4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.15/opencode-linux-arm64.tar.gz"
      sha256 "23aad358a8489cda9e9c46cde7ce87b2fc4847203ddb4d2179be34215ad6eeae"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.15/opencode-linux-x64.tar.gz"
      sha256 "0e1353771192c7d2dc0c610d61ff70668bb8a4420dc4d9e35cfd33d7245f3e67"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
