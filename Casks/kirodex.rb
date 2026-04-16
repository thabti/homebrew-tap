cask "kirodex" do
  version "0.11.0"
  sha256 "c0fbadb5c864cc324f42e7f424e71c139dd9ba8f024afd7bf5ee4e8565646184"

  url "https://github.com/thabti/kirodex/releases/download/v0.11.0/Kirodex_0.11.0_aarch64.dmg"
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
