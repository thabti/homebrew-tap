cask "kirodex" do
  version "0.20.0"
  sha256 "bade46ff2a9c4a8a3798ca91474814d8b8c930dcc01270aa31349a8767ccb135"

  url "https://github.com/thabti/kirodex/releases/download/v0.20.0/Kirodex_0.20.0_aarch64.dmg"
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
