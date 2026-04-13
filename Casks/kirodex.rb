cask "kirodex" do
  version "0.8.11"
  sha256 "6c1436bd899df745d273dd9a19b94ecb15a273e04b1f49dfd25042cf889cde74"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.11/Kirodex_0.8.11_aarch64.dmg"
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
