cask "kirodex" do
  version "0.35.0"
  sha256 "dbb0af9ba7521952cc88e7121c0eb6bea75913ff1ccd6e85c5be86707d7216a1"

  url "https://github.com/thabti/kirodex/releases/download/v0.35.0/Kirodex_0.35.0_aarch64.dmg"
  name "Kirodex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/kirodex"

  depends_on arch: :arm64

  app "Kirodex.app"

  uninstall quit: "com.kirodex.app"

  zap trash: [
    "~/Library/Application Support/com.kirodex.app",
    "~/Library/Application Support/rs.kirodex",
    "~/Library/Caches/com.kirodex.app",
    "~/Library/Logs/com.kirodex.app",
    "~/Library/Preferences/com.kirodex.app.plist",
    "~/Library/WebKit/com.kirodex.app",
  ]
end
