cask "kirodex" do
  version "0.8.14"
  sha256 "9731f978af989f4ed62913dcdf0f2ce93b6ae05ffa74382d13d2a70fadfdc935"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.14/Kirodex_0.8.14_aarch64.dmg"
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
