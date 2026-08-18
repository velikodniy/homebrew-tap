# typed: false
# frozen_string_literal: true

class Qmd < Formula
  desc "On-device hybrid search for Markdown files"
  homepage "https://github.com/tobi/qmd"
  url "https://registry.npmjs.org/@tobilu/qmd/-/qmd-2.8.3.tgz"
  sha256 "2e60829913a0c646234a905cefd61043167a1392fdcfd19bc54f890af89ca0f0"
  license "MIT"

  depends_on "node"
  depends_on "sqlite"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    ENV["XDG_CACHE_HOME"] = testpath
    docs = testpath/"docs"
    docs.mkpath
    (docs/"example.md").write <<~MARKDOWN
      # Homebrew Formula

      A semantic document search engine.
    MARKDOWN

    system bin/"qmd", "collection", "add", docs, "--name", "test"
    assert_match "A semantic document search engine.", shell_output("#{bin}/qmd search semantic")
  end
end
