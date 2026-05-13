cask "klaudex" do
  version "1.11.0"
  sha256 "bceddb7cc4ad809f98837b9e90a346796edef926dc034ed71b81dcb1f20dac47"

  url "https://github.com/thabti/klaudex/releases/download/v1.11.0/Klaudex_1.11.0_aarch64.dmg"
  name "Klaudex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/klaudex"

  depends_on arch: :arm64

  app "Klaudex.app"

  zap trash: [
    "~/Library/Application Support/com.klaudex.app",
    "~/Library/Caches/com.klaudex.app",
    "~/Library/Preferences/com.klaudex.app.plist",
  ]
end
