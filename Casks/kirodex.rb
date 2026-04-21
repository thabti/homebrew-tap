cask "kirodex" do
  version "0.18.0"
  sha256 "ee05003806093577fd2229df4d85c4a28f1a3280e15bed06935c2f6a563e15e0"

  url "https://github.com/thabti/kirodex/releases/download/v0.18.0/Kirodex_0.18.0_aarch64.dmg"
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
