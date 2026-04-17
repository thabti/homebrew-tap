cask "kirodex" do
  version "0.12.0"
  sha256 "c9de642ded4ea0d93f8086cd2a9fcb8a9d1345ad55a0e203aa1ffa98cca6d436"

  url "https://github.com/thabti/kirodex/releases/download/v0.12.0/Kirodex_0.12.0_aarch64.dmg"
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
