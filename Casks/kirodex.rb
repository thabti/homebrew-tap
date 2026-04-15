cask "kirodex" do
  version "0.10.1"
  sha256 "c7fa44cb9e127000a2fe282079f99321bc901939077bd73c9d7df12e24c6ee0e"

  url "https://github.com/thabti/kirodex/releases/download/v0.10.1/Kirodex_0.10.1_aarch64.dmg"
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
