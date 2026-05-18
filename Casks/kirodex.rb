cask "kirodex" do
  version "0.54.1"
  sha256 "5adf6f910954bf69d873b2e36f889889ca178364d85bf7e6b2bd31758f100d03"

  url "https://github.com/thabti/kirodex/releases/download/v0.54.1/Kirodex_0.54.1_aarch64.dmg"
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
