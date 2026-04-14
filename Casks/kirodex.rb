cask "kirodex" do
  version "0.8.12"
  sha256 "19863a0b338f7e1580a3f17fc93f93cc0dcbd2beac15bdc31c58cfbae1246795"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.12/Kirodex_0.8.12_aarch64.dmg"
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
