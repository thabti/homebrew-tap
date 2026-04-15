cask "kirodex" do
  version "0.9.0"
  sha256 "d7905cb0855fcaf620e608bc3deb94c60443952ee8d4a474bc836e1d485c6f48"

  url "https://github.com/thabti/kirodex/releases/download/v0.9.0/Kirodex_0.9.0_aarch64.dmg"
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
