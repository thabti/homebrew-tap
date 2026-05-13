cask "klaudex" do
  version "1.9.0"
  sha256 "27bcfa67893ecd4b04f39e44a18625f67ef42d81d95ebe5c2e56d85a577b8abc"

  url "https://github.com/thabti/klaudex/releases/download/v1.9.0/Klaudex_1.9.0_aarch64.dmg"
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
