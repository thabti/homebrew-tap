cask "kirodex" do
  version "0.40.6"
  sha256 "2237042c7da5de77df6199f7ee344118a898a02d16fa084b9b9175fc717f1a6c"

  url "https://github.com/thabti/kirodex/releases/download/v0.40.6/Kirodex_0.40.6_aarch64.dmg"
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
