# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  VERSION = "0.16.0"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-#{VERSION}.tgz"
  sha256 "d58717a3cb0d59a9ab09095ddf73c4fddc99affbf3d1d6515a9f1d9038e7cd60"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openspec --version")
  end
end
