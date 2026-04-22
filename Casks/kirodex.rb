cask "kirodex" do
  version "0.27.0"
  sha256 "8c3b7f72755d35f66e70886278c6692df720df21a283b633033832cd5e7d6342"

  url "https://github.com/thabti/kirodex/releases/download/v0.27.0/Kirodex_0.27.0_aarch64.dmg"
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
