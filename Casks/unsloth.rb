cask "unsloth" do
  version "0.1.806-beta"
  sha256 "ec9d320140fe523728e5f029df17f62b8a3b8b2200081628e573fd60c6bcd5ee"

  url "https://github.com/unslothai/unsloth/releases/download/v#{version}/Unsloth-Desktop-MacOS.dmg"
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

  uninstall_postflight_steps do
    run "/bin/sh", args: ["-c", <<~SHELL], writable_paths: ["~/.local/bin"]
      if [ -L "$HOME/.local/bin/unsloth" ] &&
         [ "$(/usr/bin/readlink "$HOME/.local/bin/unsloth")" = "$HOME/.unsloth/studio/unsloth_studio/bin/unsloth" ]; then
        /bin/rm "$HOME/.local/bin/unsloth"
      fi
    SHELL
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
