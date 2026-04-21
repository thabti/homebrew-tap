cask "kirodex" do
  version "0.25.0"
  sha256 "356eba3d013f51e79fbf7ab93f4adf2cd23704abfb572ab884018e40057478b2"

  url "https://github.com/thabti/kirodex/releases/download/v0.25.0/Kirodex_0.25.0_aarch64.dmg"
  name "Kirodex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/kirodex"

  depends_on arch: :arm64

  app "Kirodex.app"

  zap trash: [
    "~/Library/Application Support/com.kirodex.app",
    "~/Library/Caches/com.kirodex.app",
    "~/Library/Preferences/com.kirodex.app.plist",
  ]
end
