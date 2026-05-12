cask "klaudex" do
  version "1.6.0"
  sha256 "df1ec9ace53398cfc77130960dd49c108f4a277a79e745747c031c89d4cd1eaa"

  url "https://github.com/thabti/klaudex/releases/download/v1.6.0/Klaudex_1.6.0_aarch64.dmg"
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
