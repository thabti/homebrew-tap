cask "kirodex" do
  version "0.55.0"
  sha256 "b9f10ca6d208a8ec091e435bc81b373243acb7c258c5d5d3d9b1672ffb52a5b2"

  url "https://github.com/thabti/kirodex/releases/download/v0.55.0/Kirodex_0.55.0_aarch64.dmg"
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
