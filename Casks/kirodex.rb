cask "kirodex" do
  version "0.46.0"
  sha256 "c9fb661061436cec4ecbcf25b2d1cc8c883b191e7eddccc4e0fe07833d3901d2"

  url "https://github.com/thabti/kirodex/releases/download/v0.46.0/Kirodex_0.46.0_aarch64.dmg"
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
