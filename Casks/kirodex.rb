cask "kirodex" do
  version "0.8.13"
  sha256 "6cfea33155da4fe05ef8aa9ae4c7c43d558299b209b49a044a27170ac00fbfbc"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.13/Kirodex_0.8.13_aarch64.dmg"
  name "Kirodex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/kirodex"

  depends_on arch: :arm64

  app "Kirodex.app"

  zap trash: [
    "~/Library/Application Support/com.kirodex.app",
    "~/Library/Caches/com.kirodex.app",
    "~/Library/Preferences/com.kirodex.app.plist",
  ]
end
