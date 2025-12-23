# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  VERSION = "0.17.1"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-#{VERSION}.tgz"
  sha256 "fde44533ca362a1bafd08432d7c249ddb98555c8f9fcd5e09b33b91077cab493"
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
