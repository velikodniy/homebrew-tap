# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.15/opencode-darwin-arm64.zip"
      sha256 "bd60b57cb9fe0494a5352c807424d36d6d7853cf6dbddb97065c7ccd3c5d391c"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.15/opencode-darwin-x64.zip"
      sha256 "e97e8185e7b7942f6e14f51b8727dbe023b54772e075bc16fead813680455d17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.15/opencode-linux-arm64.tar.gz"
      sha256 "500611819ff88916b185649990505a9be76ad13ca5bb4b9323e5abdd39b1c6fb"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.15/opencode-linux-x64.tar.gz"
      sha256 "d842e0e8c622c672a481b7dc6f0329009b64db96b2ba6041e56f4f93f0293b1c"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
