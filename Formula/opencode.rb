# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.14.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.51/opencode-darwin-arm64.zip"
      sha256 "144ba081e7cc59532090f4457220c84dc5b662da882018b25a2934e8594a5454"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.51/opencode-darwin-x64.zip"
      sha256 "21aa455f6c660f4ec57ed50ffbec6bb76089c05824871412777dd467be37bc9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.51/opencode-linux-arm64.tar.gz"
      sha256 "56a89a11915f10b1ae93cbdaa2c52bd823a997fce07506eddc147b52357231a1"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.14.51/opencode-linux-x64.tar.gz"
      sha256 "8fea99a8960526f60011792699e05752966a49b5fd4e85dbb420b28508e0eb57"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
