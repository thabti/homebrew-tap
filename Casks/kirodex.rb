cask "kirodex" do
  version "0.40.1"
  sha256 "94d6172247cba2c6d4c1e7feac8ff40c831ccaa5955adcab4c46c448ccb188c1"

  url "https://github.com/thabti/kirodex/releases/download/v0.40.1/Kirodex_0.40.1_aarch64.dmg"
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
