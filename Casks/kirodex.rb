cask "kirodex" do
  version "0.13.0"
  sha256 "f09df9c4cdfda20ebce1e7886ad4d2c7ad47888a07d82b091432a1af116f8cba"

  url "https://github.com/thabti/kirodex/releases/download/v0.13.0/Kirodex_0.13.0_aarch64.dmg"
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
