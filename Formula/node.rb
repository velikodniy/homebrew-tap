# typed: false
# frozen_string_literal: true

class Node < Formula
  desc "JavaScript runtime installed from upstream prebuilt binaries"
  homepage "https://nodejs.org/"
  version "26.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://nodejs.org/dist/v26.8.1/node-v26.8.1-darwin-arm64.tar.xz"
      sha256 "b32047d86467497d3f59b8cf81f422c06938cf5f36ece2b36f6e7c024a0a3e5b"
    end
    on_intel do
      url "https://nodejs.org/dist/v26.8.1/node-v26.8.1-darwin-x64.tar.xz"
      sha256 "977c742754a1fa2425d3d9b4a17ca0ba4809919030432f47880b3dba8260cb6f"
    end
  end

  on_linux do
    on_arm do
      url "https://nodejs.org/dist/v26.8.1/node-v26.8.1-linux-arm64.tar.xz"
      sha256 "23c1b4d19e2f12a7d06fe8aa3d6e0e4923cf77a47e13c5ccdf32fadaa33960f2"
    end
    on_intel do
      url "https://nodejs.org/dist/v26.8.1/node-v26.8.1-linux-x64.tar.xz"
      sha256 "3e301118d7df53d563b7e96c1617545f26e2f76f9724be668d6cab65c15dda5d"
    end
  end

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      This is a drop-in fallback for Homebrew core's "node" formula, for platforms
      core no longer ships a Node bottle for (e.g. Intel macOS). Once installed, any
      other formula's plain `depends_on "node"` will use this keg automatically -
      no need to touch or reinstall those formulae.

      To get a newer Node build later, reinstall this formula explicitly rather
      than running `brew upgrade node`, which compares against core's "node.rb"
      and may try to rebuild that instead.
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/node --version").delete_prefix("v").strip
    assert_path_exists bin/"npm"
    assert_path_exists bin/"npx"
  end
end
