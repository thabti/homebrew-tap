cask "klaudex" do
  version "1.0.1"
  sha256 "aa20095208846486d0a6908417bdbfbb552f3d1e4c2689d2a3e20cbecaf94ce8"

  url "https://github.com/thabti/klaudex/releases/download/v1.0.1/Klaudex_1.0.1_aarch64.dmg"
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
