cask "kirodex" do
  version "0.40.4"
  sha256 "0a04d4871c6d25baa740cb3d24fbc8844636db56a3af15d46e5bfdd66da971db"

  url "https://github.com/thabti/kirodex/releases/download/v0.40.4/Kirodex_0.40.4_aarch64.dmg"
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
