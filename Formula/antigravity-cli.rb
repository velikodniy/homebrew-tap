# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.0-4523441756438528/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "0697f826ec64072bda426522cf239bb5400d730e9205cd3a1a83912e965b8d9c"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.0-4523441756438528/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "b17679e4044e8eb1c21c4f8ab5cf570dbf11079dc8df1c315b00c60de2489483"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.0-4523441756438528/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "23550a5ae36916b2702c006a47c21aa86fbe3af1ac44f57b5dbd3f9dec5c7e7a"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.1.0-4523441756438528/linux-x64/cli_linux_x64.tar.gz"
      sha256 "7ee512440af5ed0c819065cd7cc14eec90699214df4be32280ac346f0100577e"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
