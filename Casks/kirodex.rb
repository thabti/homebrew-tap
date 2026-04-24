cask "kirodex" do
  version "0.33.1"
  sha256 "04b5e9e89e77877decff8a05ca341ac49464e796c643df8970defcb6e0a7bddf"

  url "https://github.com/thabti/kirodex/releases/download/v0.33.1/Kirodex_0.33.1_aarch64.dmg"
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
