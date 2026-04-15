cask "kirodex" do
  version "0.10.0"
  sha256 "9f9c1b46b708871ae172f71c687afbe49231d6860235aaca6263bf418395fc4d"

  url "https://github.com/thabti/kirodex/releases/download/v0.10.0/Kirodex_0.10.0_aarch64.dmg"
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
