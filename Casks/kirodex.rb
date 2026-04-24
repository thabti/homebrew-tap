cask "kirodex" do
  version "0.34.0"
  sha256 "f19c8c08bd4cb3ad40bd8944e65174431215a2e5ef15a85d209d7e7253f3b70e"

  url "https://github.com/thabti/kirodex/releases/download/v0.34.0/Kirodex_0.34.0_aarch64.dmg"
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
