cask "kirodex" do
  version "0.8.9"
  sha256 "9eebd877bcb3f4ba8cbacb3b5b00475272f57deb94d9e389a12d89501d315f6e"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.9/Kirodex_0.8.9_aarch64.dmg"
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
