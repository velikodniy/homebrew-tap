# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-1.2.0.tgz"
  sha256 "2aceda94693f1db0b0d2ea3c750a2a418737eab30d026d1d066629945cde98ba"
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
