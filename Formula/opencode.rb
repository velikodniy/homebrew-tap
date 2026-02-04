# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.50/opencode-darwin-arm64.zip"
      sha256 "08cfa3a1dc10b320e8cacf0efed50a2ae97d28a595e7687ba900d9329327c7da"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.50/opencode-darwin-x64.zip"
      sha256 "8d9481bf0ab3b2e339f9d2336ba6fcf9607bacf54132e338615dadfafa06ae28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.50/opencode-linux-arm64.tar.gz"
      sha256 "565c56ec17e1f723f94d60d188fb26676786b15fef7b22bb953618c404b38727"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.50/opencode-linux-x64.tar.gz"
      sha256 "a76f02bba43447be50bde62ef14a1b6b3add6738cde428fb7b9a7bf5606bc435"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
