# typed: false
# frozen_string_literal: true

class Qmd < Formula
  desc "On-device hybrid search for Markdown files"
  homepage "https://github.com/tobi/qmd"
  url "https://registry.npmjs.org/@tobilu/qmd/-/qmd-2.9.0.tgz"
  sha256 "436ce43f4dd9e64ee734c86964195aa049f0abc34ab9ed6d90608ad4b20665d4"
  license "MIT"

  depends_on "sqlite"

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
    bin.install_symlink libexec.glob("bin/*")

    # Prebuilt sqlite-vec lacks Mach-O headerpad for its full node_modules ID,
    # so keep it at a short path. Basename must stay vec0.dylib for SQLite.
    libexec.glob("lib/node_modules/**/sqlite-vec-darwin-*/vec0.dylib").each do |dylib|
      libexec.install dylib
      dylib.make_relative_symlink libexec/"vec0.dylib"
    end
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
