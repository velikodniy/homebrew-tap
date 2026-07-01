# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.17.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.12/opencode-darwin-arm64.zip"
      sha256 "02c87f20c09a602ec73717c1c2644330e4a78c9623cb8bc19fa5a17bf163c6e9"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.12/opencode-darwin-x64.zip"
      sha256 "94028b93c696e4c3d4948490821e85a08bd16d81b8db8e235d514338ade8cd30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.12/opencode-linux-arm64.tar.gz"
      sha256 "b36060c4c5bc8fee8e507a600af0ad8b2aa5e0c451f7f34cc3763a0d557b44d6"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.17.12/opencode-linux-x64.tar.gz"
      sha256 "b41e3ae69b5033f6fba8b9fcf4cb19f0dc8093d449266ef01a5cd142f6f7064d"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
