# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.18.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.11/opencode-darwin-arm64.zip"
      sha256 "188ff6a716bcd40e33ac62f17f4aec9bd760164fa6a2cde66f779a5db4abc7ce"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.11/opencode-darwin-x64.zip"
      sha256 "95953ab2aca4322b90690bf34697cc9b47b6a7c72f78e7c469056fb589124d31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.11/opencode-linux-arm64.tar.gz"
      sha256 "03e07aa461ac241dfa8c7ab54ed58c7a0e911c62fc3cb490b83e4fb3424eb73b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.18.11/opencode-linux-x64.tar.gz"
      sha256 "a4dffcc00a5a93256c6bd06aa0c984320528f564db52a1f4becd5c7de9fb59a1"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
