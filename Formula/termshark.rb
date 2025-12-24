# typed: false
# frozen_string_literal: true

class Termshark < Formula
  desc "Terminal UI for tshark, inspired by Wireshark"
  homepage "https://github.com/gcla/termshark"
  version "2.4.0"
  license "MIT"

  depends_on "wireshark"

  on_macos do
    on_arm do
      url "https://github.com/gcla/termshark/releases/download/v2.4.0/termshark_2.4.0_macOS_arm64.tar.gz"
      sha256 "440e2e3968df66a6c71317b00e3de816d2aa4469097218fcf17fabcea0b28480"
    end
    on_intel do
      url "https://github.com/gcla/termshark/releases/download/v2.4.0/termshark_2.4.0_macOS_x64.tar.gz"
      sha256 "fbbe6232aeac6aeafbfb439629270437a2dc307f6346bc225c37df7f5645f842"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcla/termshark/releases/download/v2.4.0/termshark_2.4.0_linux_arm64.tar.gz"
      sha256 "6dc3003a48291c463f057d0151727e0d21e295d804f082f3d35d72fd94d0a56e"
    end
    on_intel do
      url "https://github.com/gcla/termshark/releases/download/v2.4.0/termshark_2.4.0_linux_x64.tar.gz"
      sha256 "a28b2ab534ba8bf2297bbe9846281e62aa0010832b75773369e0d48912acef74"
    end
  end

  def install
    bin.install "termshark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termshark -v")
  end
end
