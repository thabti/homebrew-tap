cask "kirodex" do
  version "0.61.0"
  sha256 "8a608eb71be964b913d62b934c7c3eb23f1ade3cf1ac30f031539e556137baf4"

  url "https://github.com/thabti/kirodex/releases/download/v0.61.0/Kirodex_0.61.0_aarch64.dmg"
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
