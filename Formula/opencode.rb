# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.32/opencode-darwin-arm64.zip"
      sha256 "fa643f93401c13508d8d513780e54ce9cc01203d501114be9b88d62408b8101f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.32/opencode-darwin-x64.zip"
      sha256 "a24bf10499382f8855e19d2a081b8683e4ab99c7c2affb32dc89b17c8a00ccd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.32/opencode-linux-arm64.tar.gz"
      sha256 "568461b7d4d8c19865c97e9a1102e613049c6039d01fe772154de873c1865840"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.32/opencode-linux-x64.tar.gz"
      sha256 "3046e0404fdc60fb80307e7a47824ba07477364178a4d09baa8548496dd6d43b"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
