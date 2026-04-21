cask "kirodex" do
  version "0.20.0"
  sha256 "88df45f9866855c3467fd12abf4ea4e38c9ee6811712908ba3792d861f2e760a"

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
