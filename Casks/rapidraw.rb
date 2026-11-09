cask "rapidraw" do
  arch arm: "macos-15_aarch64", intel: "macos-15-intel_x64"

  version "1.6.9"
  sha256 arm:   "c0cad5dd47332d0e8a95245cedc29a3410626c2f8a9820865f632c6e28cdb1c0",
         intel: "217055a49ad680ff9b890511406747e0dd9d72181325e1ac4bd6c32fee3e618a"

  url "https://github.com/CyberTimon/RapidRAW/releases/download/v#{version}/02_RapidRAW_v#{version}_#{arch}.dmg"
  name "RapidRAW"
  desc "GPU-accelerated, non-destructive RAW image editor"
  homepage "https://getrapidraw.com/"

  # Bundled ONNX Runtime needs 13.3; Homebrew constraints use major versions.
  depends_on macos: :ventura

  app "RapidRAW.app"

  uninstall quit: "io.github.CyberTimon.RapidRAW"
end
