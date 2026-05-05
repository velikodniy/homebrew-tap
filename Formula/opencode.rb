# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.35/opencode-darwin-arm64.zip"
      sha256 "5f7c35c544452ca30a126293d21f341845f19517c6417711fdb4f6aeab40ca5b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.35/opencode-darwin-x64.zip"
      sha256 "80c7b428a01af5860136d72db00e158ff4e5719997883336a141a3ba8c315ccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.35/opencode-linux-arm64.tar.gz"
      sha256 "506b5302f93299d4773ca739e8b68138f169cc81deb2bf6930f9f34bce453bb4"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.35/opencode-linux-x64.tar.gz"
      sha256 "2e35643de90e5315177e31969ab1cf2af55a8ba9391e5c348f48381bf30c1010"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
