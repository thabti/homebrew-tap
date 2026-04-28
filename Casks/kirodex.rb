cask "kirodex" do
  version "0.40.3"
  sha256 "858fba1ceb443664d76d4c6fcf30cfac4e249cbe3ccae8aef4da720855e060ab"

  url "https://github.com/thabti/kirodex/releases/download/v0.40.3/Kirodex_0.40.3_aarch64.dmg"
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
