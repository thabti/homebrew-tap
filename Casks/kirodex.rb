cask "kirodex" do
  version "0.60.0"
  sha256 "4783087cb155821a03ae6ef4ef330a95aa5c317eff88e383a566d93987cb2bda"

  url "https://github.com/thabti/kirodex/releases/download/v0.60.0/Kirodex_0.60.0_aarch64.dmg"
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
