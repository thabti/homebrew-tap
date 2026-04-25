cask "kirodex" do
  version "0.37.0"
  sha256 "ae8408fae70be99bda112a93e4321fb85aad0eb8d5f90ca9d57a6f32c18b230a"

  url "https://github.com/thabti/kirodex/releases/download/v0.37.0/Kirodex_0.37.0_aarch64.dmg"
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
