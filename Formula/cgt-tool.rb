# typed: false
# frozen_string_literal: true

class CgtTool < Formula
  desc "CLI for UK Capital Gains Tax calculation"
  homepage "https://github.com/velikodniy/cgt-tool"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.2/cgt-tool-macos-aarch64"
      sha256 "d35703c34fabf809ec0c48cb2cb291c1d70143083e2d162ff6b75e04d5eaf80e"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.2/cgt-tool-macos-x86_64"
      sha256 "20ae898455ae8b1cb8f6bfcd8251418c7c772e6ef594757460c5f3aa65abe4e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.2/cgt-tool-linux-aarch64"
      sha256 "6868ef059ef58c574046f8c81d2bcbb36d97ee70c3113ad59dd00a66eace2592"
    end
    on_intel do
      url "https://github.com/velikodniy/cgt-tool/releases/download/v0.15.2/cgt-tool-linux-x86_64"
      sha256 "9447b0dbf6ff567c3ae339723097c8e97a396c4c496f10b1966e9d594534dacf"
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
