cask "kirodex" do
  version "0.33.0"
  sha256 "0b1d86a1c1e290bfb11f462a2faa8cff408de2d660422e399a6598388494e43f"

  url "https://github.com/thabti/kirodex/releases/download/v0.33.0/Kirodex_0.33.0_aarch64.dmg"
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
