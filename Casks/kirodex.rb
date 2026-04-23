cask "kirodex" do
  version "0.30.0"
  sha256 "1dcd2ff7b55d1fbcad73c7baaa56fccef1d5701463ec9b2ce6acb72cbcbab4d5"

  url "https://github.com/thabti/kirodex/releases/download/v0.30.0/Kirodex_0.30.0_aarch64.dmg"
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
