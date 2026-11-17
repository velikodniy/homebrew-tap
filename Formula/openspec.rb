# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-2.1.0.tgz"
  sha256 "eccc398bb23fd60085e267a2d2ad78f062b885dc627ba01aa7a8f202163255db"
  license "MIT"

  on_macos do
    on_arm do
      depends_on "node"
    end
    on_intel do
      depends_on "velikodniy/tap/node"
    end
  end
  on_linux do
    depends_on "node"
  end

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openspec --version")
  end
end
