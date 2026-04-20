cask "kirodex" do
  version "0.15.0"
  sha256 "9f788c87a41c22ba026ddc0b034448a7b2970b276be1180d56c31c3c1e7bdbde"

  url "https://github.com/thabti/kirodex/releases/download/v0.15.0/Kirodex_0.15.0_aarch64.dmg"
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
