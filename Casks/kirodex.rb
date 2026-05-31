cask "kirodex" do
  version "0.65.0"
  sha256 "4cbbada951f5b0d15b755a067bfb8dacc0f82d008a3ee2c13e5aa1c99511fe13"

  url "https://github.com/thabti/kirodex/releases/download/v0.65.0/Kirodex_0.65.0_aarch64.dmg"
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
