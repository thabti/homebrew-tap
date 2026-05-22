cask "kirodex" do
  version "0.57.0"
  sha256 "eb51921864ee0b349c3dfa2988c32226f720d8ba590afcea2c726e60eb00f5f8"

  url "https://github.com/thabti/kirodex/releases/download/v0.57.0/Kirodex_0.57.0_aarch64.dmg"
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
