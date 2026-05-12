cask "klaudex" do
  version "1.8.0"
  sha256 "be45ef140cf62a21eb4948151218631e8c0be4c02408110894bf0ef351215842"

  url "https://github.com/thabti/klaudex/releases/download/v1.8.0/Klaudex_1.8.0_aarch64.dmg"
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
