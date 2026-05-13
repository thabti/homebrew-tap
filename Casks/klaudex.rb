cask "klaudex" do
  version "1.8.1"
  sha256 "bdbb75f875220b33e40278c3d1346c87334a1dcebb3e8adad65e035528456ea5"

  url "https://github.com/thabti/klaudex/releases/download/v1.8.1/Klaudex_1.8.1_aarch64.dmg"
  name "Klaudex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/klaudex"

  depends_on arch: :arm64

  app "Klaudex.app"

  zap trash: [
    "~/Library/Application Support/com.klaudex.app",
    "~/Library/Caches/com.klaudex.app",
    "~/Library/Preferences/com.klaudex.app.plist",
  ]
end
