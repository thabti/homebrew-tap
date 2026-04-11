cask "kirodex" do
  version "0.8.1"
  sha256 "9e7d97fb42f5193f98952c30f92223094cfb4e53460561fde259249d88abfc33"

  url "https://github.com/thabti/kirodex/releases/download/v#{version}/Kirodex_#{version}_aarch64.dmg"
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
