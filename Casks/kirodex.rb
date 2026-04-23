cask "kirodex" do
  version "0.28.0"
  sha256 "faba83ee2d593166bb9b83fb44570fe49bcdfce9bc25a5ede947e645ecadaf83"

  url "https://github.com/thabti/kirodex/releases/download/v0.28.0/Kirodex_0.28.0_aarch64.dmg"
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
