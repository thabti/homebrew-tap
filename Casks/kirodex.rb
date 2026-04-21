cask "kirodex" do
  version "0.26.0"
  sha256 "b8a841ec26ca246d0cd96f399bbfa23c3e1a0dfb298f442c9bf329dc727f1185"

  url "https://github.com/thabti/kirodex/releases/download/v0.26.0/Kirodex_0.26.0_aarch64.dmg"
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
