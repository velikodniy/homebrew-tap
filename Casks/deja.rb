cask "deja" do
  version "0.1.0"
  sha256 "02aad7efbf9d0e401e4cf468571dcc8db663f1c58de3770d2d66876278561d6d"

  url "https://github.com/velikodniy/deja/releases/download/v#{version}/Deja_#{version}_universal.dmg"
  name "Deja"
  desc "DjVu document viewer"
  homepage "https://github.com/velikodniy/deja"

  depends_on :macos

  app "Deja.app"
end
