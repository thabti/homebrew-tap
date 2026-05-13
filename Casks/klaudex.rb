cask "klaudex" do
  version "1.10.1"
  sha256 "f9853ab1308b1e746d0c126eb9eaff4bbd3317e587ecd1d5e6456cb299ef575f"

  url "https://github.com/thabti/klaudex/releases/download/v1.10.1/Klaudex_1.10.1_aarch64.dmg"
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
