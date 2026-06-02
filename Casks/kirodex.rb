cask "kirodex" do
  version "0.65.1"
  sha256 "c2b479664dd7ba45d874a99f1d77b5387659a48552d3d4f80ad1be280a5f7728"

  url "https://github.com/thabti/kirodex/releases/download/v0.65.1/Kirodex_0.65.1_aarch64.dmg"
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
