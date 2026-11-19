cask "rapidraw" do
  arch arm: "macos-15_aarch64", intel: "macos-15-intel_x64"

  version "1.7.0"
  sha256 arm:   "19c0bb3d405b4c047e338884df5034be9f0a3f44669344f86254f9972d70dd06",
         intel: "d0561f9078fb7f348e46789f47eafe1b115ce5826926371cdc3d25203edd63db"

  url "https://github.com/CyberTimon/RapidRAW/releases/download/v#{version}/02_RapidRAW_v#{version}_#{arch}.dmg"
  name "RapidRAW"
  desc "GPU-accelerated, non-destructive RAW image editor"
  homepage "https://getrapidraw.com/"

  # Bundled ONNX Runtime needs 13.3; Homebrew constraints use major versions.
  depends_on macos: :ventura

  app "RapidRAW.app"

  uninstall quit: "io.github.CyberTimon.RapidRAW"
end
