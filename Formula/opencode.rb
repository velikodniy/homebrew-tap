# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI-powered development tool"
  homepage "https://github.com/anomalyco/opencode"
  version "1.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.15/opencode-darwin-arm64.zip"
      sha256 "823e100ccef7554f44867dc7a065fbd8d924f21a3109e87ccb8c326e01a2059b"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.15/opencode-darwin-x64.zip"
      sha256 "8b36d562b46591d2bb695853a398556ddcfd1ebaaebcc5d3dcca0c1789f42ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.15/opencode-linux-arm64.tar.gz"
      sha256 "2794ecebc7674174897d4c98fadd7911a670f00356baf0267b89235e1e1fa30f"
    end
    on_intel do
      url "https://github.com/anomalyco/opencode/releases/download/v1.1.15/opencode-linux-x64.tar.gz"
      sha256 "df55778ea1bb209d86d7646b8a1d993b6d94075fa6c668368244022cedcbd41e"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
