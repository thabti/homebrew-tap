cask "kirodex" do
  version "0.49.0"
  sha256 "eb5da0f646211b6688883e6b6cedf5acdb45817a3f5e52cc298b037f5fbec172"

  url "https://github.com/thabti/kirodex/releases/download/v0.49.0/Kirodex_0.49.0_aarch64.dmg"
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
