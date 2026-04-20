cask "kirodex" do
  version "0.16.1"
  sha256 "68cafec83edeae99ae1ac72faa9dbbe3b33b41c34c356b2eb3ae423182a9cc6b"

  url "https://github.com/thabti/kirodex/releases/download/v0.16.1/Kirodex_0.16.1_aarch64.dmg"
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
