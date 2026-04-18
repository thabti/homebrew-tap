cask "kirodex" do
  version "0.14.0"
  sha256 "ac888aa009d83a7271f4414bae681bca8d46d982609dd32b058879bcaadce09c"

  url "https://github.com/thabti/kirodex/releases/download/v0.14.0/Kirodex_0.14.0_aarch64.dmg"
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
