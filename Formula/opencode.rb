# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.16/opencode-darwin-arm64.zip"
      sha256 "1e670c94341a374824dc6700b6f38b2cb6634baf3ca20e645084c33ce6639320"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.16/opencode-darwin-x64.zip"
      sha256 "4cfa1d11e665ffb83b68dbefc4cadee0559d008e7ab40c92d14fc371c8b13595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.16/opencode-linux-arm64.tar.gz"
      sha256 "4fdce5f9bc877d977304d71c0c90ad6e83efa381fe0edf0a61e6142a625e1c41"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.16/opencode-linux-x64.tar.gz"
      sha256 "286e07355df06738c1905955be15b7fbc10a7b12d931de9394a6f7597246750b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
