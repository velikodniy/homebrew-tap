# typed: false
# frozen_string_literal: true

class AntigravityCli < Formula
  desc "Google Antigravity CLI (agy)"
  homepage "https://antigravity.google/"
  version "1.5.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.0-5269980577660928/darwin-arm/cli_mac_arm64.tar.gz"
      sha256 "105fb4f6181665f85cea79a9a26ef9e106ea0666b9a0904bb63a45e64951286b"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.0-5269980577660928/darwin-x64/cli_mac_x64.tar.gz"
      sha256 "306bfdf4d9b14d949aa5b297fd234fa6713ce7f6a4bd4e85aaba0001a1ab69a4"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.0-5269980577660928/linux-arm/cli_linux_arm64.tar.gz"
      sha256 "87e73a5ab4ecb3a9668660d259dafd13f5443149da0113664d59129a21a62ba4"
    end
    on_intel do
      url "https://storage.googleapis.com/antigravity-public/antigravity-cli/1.5.0-5269980577660928/linux-x64/cli_linux_x64.tar.gz"
      sha256 "f65e365a67be49abdaf92f5669c3157bd4b9c569f6b9f448340b00ca261b0f01"
    end
  end

  def install
    bin.install "antigravity" => "agy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agy --version")
  end
end
