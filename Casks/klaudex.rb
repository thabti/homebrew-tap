cask "klaudex" do
  version "1.8.0"
  sha256 "5292804b16e32b18d2180b852dacd507af9a77b678a3f2075ed849bcecd2eda4"

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
