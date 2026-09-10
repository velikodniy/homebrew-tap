# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-1.13.0.tgz"
  sha256 "f3c129f3f1e3aece105a4c1798301c7b6faeacec8a30eec8def63787e4d59ace"
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
