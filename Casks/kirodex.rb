cask "kirodex" do
  version "0.8.10"
  sha256 "da83ac893e041d304259abb56813271de2b3729515a13d4129416de76d0cc2ef"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.10/Kirodex_0.8.10_aarch64.dmg"
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
