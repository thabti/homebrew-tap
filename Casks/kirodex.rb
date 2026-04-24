cask "kirodex" do
  version "0.33.2"
  sha256 "9339305283bf5e11b23544fa92fcd2edf2f5d82b7c6cf1b36c2d7ed71f949774"

  url "https://github.com/thabti/kirodex/releases/download/v0.33.2/Kirodex_0.33.2_aarch64.dmg"
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
