cask "kirodex" do
  version "0.16.0"
  sha256 "0d4c5a6c64884f6d310ef9e40beae760df52bc915d306b29dccc7414bd9c59aa"

  url "https://github.com/thabti/kirodex/releases/download/v0.16.0/Kirodex_0.16.0_aarch64.dmg"
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
