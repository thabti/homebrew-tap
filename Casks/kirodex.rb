cask "kirodex" do
  version "0.8.7"
  sha256 "59b49963a1016ef34a1602f5e9709f5447b2709f70f3fb721cd3764fd7ec8e34"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.7/Kirodex_0.8.7_aarch64.dmg"
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
