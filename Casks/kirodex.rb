cask "kirodex" do
  version "0.36.0"
  sha256 "54316bb0a27d5eff08be2ad9b595da95e4a994fb8bdf0f85ff3edcf150e886b7"

  url "https://github.com/thabti/kirodex/releases/download/v0.36.0/Kirodex_0.36.0_aarch64.dmg"
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
