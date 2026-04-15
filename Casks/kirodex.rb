cask "kirodex" do
  version "0.8.15"
  sha256 "e51c2e05009f5207d04621b36cd19197ada07fd6ae08d2a93b89d56b5f9502f1"

  url "https://github.com/thabti/kirodex/releases/download/v0.8.15/Kirodex_0.8.15_aarch64.dmg"
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
