cask "klaudex" do
  version "1.12.0"
  sha256 "819c96789182e7ef7a381e4284c7fa27f8814a9b8240508e53076ad8fe23b4fa"

  url "https://github.com/thabti/klaudex/releases/download/v1.12.0/Klaudex_1.12.0_aarch64.dmg"
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
