cask "kirodex" do
  version "0.17.0"
  sha256 "2f9744db3ba2909cfb46eaf797aa344aa7c9889bbcffbdf4ca38f7a866130c99"

  url "https://github.com/thabti/kirodex/releases/download/v0.17.0/Kirodex_0.17.0_aarch64.dmg"
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
