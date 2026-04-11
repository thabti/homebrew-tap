cask "kirodex" do
  version "0.8.8"
  sha256 "c24ec2e8aa0982f9398128a2759fc0c8f36a8d758b4918827ebe017446334d5e"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.8/Kirodex_0.8.8_aarch64.dmg"
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
