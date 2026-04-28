cask "kirodex" do
  version "0.40.2"
  sha256 "797b9171f5478ff2de6b414015b098447a8dea7ac7dd42702b8d0e2b07b6228c"

  url "https://github.com/thabti/kirodex/releases/download/v0.40.2/Kirodex_0.40.2_aarch64.dmg"
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
