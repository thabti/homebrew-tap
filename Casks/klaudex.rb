cask "klaudex" do
  version "1.13.0"
  sha256 "005c26bd514abc38f94a8df39e28eea48a15523d277eb093b40a2eb3e7328a83"

  url "https://github.com/thabti/klaudex/releases/download/v1.13.0/Klaudex_1.13.0_aarch64.dmg"
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
