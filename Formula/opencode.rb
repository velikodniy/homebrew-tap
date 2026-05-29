# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.15.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.12/opencode-darwin-arm64.zip"
      sha256 "d654f0e3f52bdba560b1aac021e1fec7ef456d21b0f02c3ba8202843e73dbd45"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.12/opencode-darwin-x64.zip"
      sha256 "fba0919515bcda9e742dd7c647a7983f784ca948dec84f29c235a8ad0bcef985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.12/opencode-linux-arm64.tar.gz"
      sha256 "ed5181b81e978fa027d9f47cd67f8faebec634223d7f824aa226126188ccbee5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.15.12/opencode-linux-x64.tar.gz"
      sha256 "ed6f8bce0fea1fb2be789bfe0cfbe7a4a819770e998e32836b0708c015303a67"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
