cask "rapidraw" do
  arch arm: "macos-15_aarch64", intel: "macos-15-intel_x64"

  version "1.7.1"
  sha256 arm:   "14f06525f3455518a09788271b000bc7abb4a90277c93726b11470ae77848c3f",
         intel: "5151dbc39133ba8efb254471f1479b1a2250ba276a412a512bfc042e0e96a5de"

  url "https://github.com/CyberTimon/RapidRAW/releases/download/v#{version}/02_RapidRAW_v#{version}_#{arch}.dmg"
  name "RapidRAW"
  desc "GPU-accelerated, non-destructive RAW image editor"
  homepage "https://getrapidraw.com/"

  # Bundled ONNX Runtime needs 13.3; Homebrew constraints use major versions.
  depends_on macos: :ventura

  app "RapidRAW.app"

  uninstall quit: "io.github.CyberTimon.RapidRAW"
end
