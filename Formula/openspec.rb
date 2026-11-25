# typed: false
# frozen_string_literal: true

class Openspec < Formula
  desc "Spec-driven development for AI coding assistants"
  homepage "https://openspec.dev"
  url "https://registry.npmjs.org/@fission-ai/openspec/-/openspec-2.2.0.tgz"
  sha256 "581d78a058c9e0d11e40b0f7a1ffb36282e54394f22ac02a8d04f3b1bb408cde"
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
