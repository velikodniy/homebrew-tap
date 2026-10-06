# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-1.14.1.tgz"
  sha256 "4a88e334938316db6916fd4f3aaf2213e6fc23b4fe327efd2afe7754c2d3b0bf"
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
