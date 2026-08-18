cask "unsloth" do
  version "0.1.800-beta"
  sha256 "0cd2f2001b08df8bd4e47ea5784ccae9144ab80168f4964a2b89c9cd8e0b15ab"

  url "https://github.com/unslothai/unsloth/releases/download/v#{version}/Unsloth-Desktop-#{version.dots_to_underscores.hyphens_to_underscores}-MacOS.dmg"
  name "Unsloth"
  desc "Local interface for running and training AI models"
  homepage "https://unsloth.ai/"

  livecheck do
    url "https://github.com/unslothai/unsloth/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch:  :arm64,
             macos: :big_sur

  app "Unsloth.app"

  uninstall_postflight do
    unsloth_binary = Pathname("~/.local/bin/unsloth").expand_path
    managed_binary = Pathname("~/.unsloth/studio/unsloth_studio/bin/unsloth").expand_path

    unsloth_binary.unlink if unsloth_binary.symlink? && unsloth_binary.readlink == managed_binary
  end

  uninstall quit: "ai.unsloth.studio"

  zap trash: [
    "~/.local/share/unsloth",
    "~/.unsloth",
    "~/Library/Application Support/ai.unsloth.studio",
    "~/Library/Caches/ai.unsloth.studio",
    "~/Library/Logs/ai.unsloth.studio",
    "~/Library/Preferences/ai.unsloth.studio.plist",
    "~/Library/Saved Application State/ai.unsloth.studio.savedState",
    "~/Library/WebKit/ai.unsloth.studio",
  ]
end
