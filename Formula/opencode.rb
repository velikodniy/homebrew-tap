# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.0/opencode-darwin-arm64.zip"
      sha256 "be968e559051bb622f0b9fc628216670240b7e7441a11b0eb11f79a6f03239a5"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.0/opencode-darwin-x64.zip"
      sha256 "fb2ab4b4995bcced575f19f90bb08cb657accdb90ebeec9f0cd182f02e1e9e0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.0/opencode-linux-arm64.tar.gz"
      sha256 "2f5728ed47d8147da9163e4c10a83914131bf849bfc0f17590ab6d58b7d03ba3"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.4.0/opencode-linux-x64.tar.gz"
      sha256 "5117eb08aa542d49b0149ba837d01c7ebc1d79ba332e8518859edc33c4eff2cf"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
