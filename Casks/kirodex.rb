cask "kirodex" do
  version "0.41.0"
  sha256 "0965417a44c65e3ad69c277a2a2fee513ad42264de7562daf5fa490d6de51b44"

  url "https://github.com/thabti/kirodex/releases/download/v0.41.0/Kirodex_0.41.0_aarch64.dmg"
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
