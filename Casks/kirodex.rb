cask "kirodex" do
  version "0.66.0"
  sha256 "e4bd87d970cf02cfd92e4b555738a93437e46a227036146d9cdd5cb727f226cc"

  url "https://github.com/thabti/kirodex/releases/download/v0.66.0/Kirodex_0.66.0_aarch64.dmg"
  name "Kirodex"
  desc "AI coding agents on your desktop"
  homepage "https://github.com/thabti/kirodex"

  depends_on arch: :arm64

  app "Kirodex.app"

  uninstall quit: "com.kirodex.app"

  zap trash: [
    "~/Library/Application Support/com.kirodex.app",
    "~/Library/Application Support/rs.kirodex",
    "~/Library/Caches/com.kirodex.app",
    "~/Library/Logs/com.kirodex.app",
    "~/Library/Preferences/com.kirodex.app.plist",
    "~/Library/WebKit/com.kirodex.app",
  ]
end
