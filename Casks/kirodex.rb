cask "kirodex" do
  version "0.66.1"
  sha256 "9e66457858cd749b0cbb7b7f04dc48158805960ef261d8b7d5a60913ece07615"

  url "https://github.com/thabti/kirodex/releases/download/v0.66.1/Kirodex_0.66.1_aarch64.dmg"
  name "Kirodex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/kirodex"

  depends_on arch: :arm64

  app "Kirodex.app"

  uninstall quit: "com.kirodex.app"

  zap trash: [
    "~/Library/Application Support/com.kirodex.app",
    "~/Library/Application Support/rs.kirodex",
    "~/Library/Caches/com.kirodex.app",
    "~/Library/Logs/com.kirodex.app",
    "~/Library/Preferences/com.kirodex.app.plist",
    "~/Library/WebKit/com.kirodex.app",
  ]
end
