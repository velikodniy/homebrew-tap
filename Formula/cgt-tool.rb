# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.1/cgt-tool-macos-aarch64"
      sha256 "062a652001b7b7f6ce567522f5253cf0984565199705d6273476e31e7bb3528a"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.1/cgt-tool-macos-x86_64"
      sha256 "f8eca0410058040beeafbc486f8c06dcce925a2c5a572c985d4534a669ca7063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.1/cgt-tool-linux-aarch64"
      sha256 "1d11d1ae86283eb6e7e3eec0672c0aa5a7166a768ed765a4774c96d995c760f9"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.17.1/cgt-tool-linux-x86_64"
      sha256 "295a7b8cd4465325cacdd4525136d3e489aa54f1f5dad71d9f92eaae3e6866ee"
    end
  end

  def install
    binary = Dir["cgt-tool-*"]&.first
    odie "binary not found" unless binary
    bin.install binary => "cgt-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cgt-tool --version")
  end
end
