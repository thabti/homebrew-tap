cask "kirodex" do
  version "0.9.1"
  sha256 "71c24002489a6c0cd9ca18549fed50224cc83cf8798840aba3cf6d31dc17e48a"

  url "https://github.com/thabti/kirodex/releases/download/v0.9.1/Kirodex_0.9.1_aarch64.dmg"
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
