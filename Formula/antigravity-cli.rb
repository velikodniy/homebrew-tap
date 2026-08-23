# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.19-4894004681244672/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "ad72daf6b255d96e4864fe6bd2f3fa4070fb4c554845ceaf1d6399d8f1092e45"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.19-4894004681244672/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "a12c448dec091248eca3abe0bef67c7696509312ed9b4f26415b9abedd98bf81"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.19-4894004681244672/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "15bd9959ec0c08bcbfee94b376f02bd8b552dcf17a539bcd210a443fb82443cb"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.19-4894004681244672/linux-x64/cli_linux_x64.tar.gz"
      sha256 "a02132a7c6c647ef0ad483ecbe767619adf6b660a5589cba5c937b0c83909b97"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
