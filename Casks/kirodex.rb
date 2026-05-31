cask "kirodex" do
  version "0.62.0"
  sha256 "19ff67a1fb2749d5fe34662b5d94712f1a64f688d01c883da1d8eea32d56f08e"

  url "https://github.com/thabti/kirodex/releases/download/v0.62.0/Kirodex_0.62.0_aarch64.dmg"
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
