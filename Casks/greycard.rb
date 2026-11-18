cask "greycard" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "58aacf8c1e2bf4d97c5a5cbf277f9ccd3c2127c4f49abdf80e7eb1c2d5ec4cd7",
         intel: "44c6b76535d252656cf5d086d82e679d9eddd7180776f1089915eec6049be42d"

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
