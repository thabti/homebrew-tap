cask "kirodex" do
  version "0.61.1"
  sha256 "bdd4f23263fc396f09517fb793fe85e8839a9d1bc9ddc8be3fd5d2254828d1d8"

  url "https://github.com/thabti/kirodex/releases/download/v0.61.1/Kirodex_0.61.1_aarch64.dmg"
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
