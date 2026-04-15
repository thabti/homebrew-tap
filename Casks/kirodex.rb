cask "kirodex" do
  version "0.9.2"
  sha256 "17cf609272f58aafdebe558d3ba3b57dbd88c31a9b54b385d8fbbf2e31846114"

  url "https://github.com/thabti/kirodex/releases/download/v0.9.2/Kirodex_0.9.2_aarch64.dmg"
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
