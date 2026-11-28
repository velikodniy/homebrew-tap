cask "greycard" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.13.0"
  sha256 arm:   "bc89e2ee034cbe9f5ae9ee7f8e95b1da5e155a7d9731b9f16bc08f220a90c2ff",
         intel: "ab517dabfbee2129637a9d3888a7197de9649d2c86bfd3eb3632fc905df1343f"

  url "https://github.com/jessolmstead/greycard/releases/download/v#{version}/greycard-#{version}-#{arch}-macos.dmg"
  name "greycard"
  desc "Color-accurate RAW photo editor"
  homepage "https://greycard.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  # Bundled libraries need 13.4; Homebrew constraints use major versions.
  depends_on macos: :ventura

  app "greycard.app"
  binary "#{appdir}/greycard.app/Contents/MacOS/greycard"
  binary "#{appdir}/greycard.app/Contents/MacOS/greycard-ui"

  uninstall quit: "org.greycard.greycard"

  zap trash: [
    "~/Library/Application Support/greycard",
    "~/Library/Caches/greycard",
    "~/Library/Logs/greycard",
  ]
end
