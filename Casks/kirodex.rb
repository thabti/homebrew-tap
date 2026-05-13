cask "kirodex" do
  version "0.47.0"
  sha256 "640e9ad45cc4c9656f9f8a163cbf28addc6cd77ca18096e9895b2bffd1458d6d"

  url "https://github.com/thabti/kirodex/releases/download/v0.47.0/Kirodex_0.47.0_aarch64.dmg"
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
