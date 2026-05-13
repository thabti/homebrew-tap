cask "klaudex" do
  version "1.10.0"
  sha256 "5f3c2edee6c05eec5e320246f51e8e0fa7356d3835a3dc465d9d991968884c8d"

  url "https://github.com/thabti/klaudex/releases/download/v1.10.0/Klaudex_1.10.0_aarch64.dmg"
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
