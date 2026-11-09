cask "greycard" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.0"
  sha256 arm:   "781e53f9097a233431df3ee146c57ce87f470a004d8ac415a0a7d411b137be90",
         intel: "1dab0b6b4d8d0af3dd0fb3a088f8e8663c4521c04a8aed2a3b60bc5de0828c4f"

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
