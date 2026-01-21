# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.28/opencode-darwin-arm64.zip"
      sha256 "7139c2bc3da07d6f86b2329217c6a30227274dcfd826f4b8ea8fd58e5c822c96"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.28/opencode-darwin-x64.zip"
      sha256 "1fbe3808ed888421a5ecbf9c3bbf4932d10d3563da0c7202c8732f4c8dc66bc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.28/opencode-linux-arm64.tar.gz"
      sha256 "de7d70bcf54dd542664e1b965303d2915b0db22db5810a40fc4a08496fca31fb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.28/opencode-linux-x64.tar.gz"
      sha256 "8c707150eb656384ac331f722f8f9fc7de9317db28c72b5a4de0c1243fb0356c"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
