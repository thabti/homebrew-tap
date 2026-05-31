cask "kirodex" do
  version "0.57.1"
  sha256 "b4ca423535486e0177cb2dbc2cf4478639bf7068085cae86b81e69f410bb928d"

  url "https://github.com/thabti/kirodex/releases/download/v0.57.1/Kirodex_0.57.1_aarch64.dmg"
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
