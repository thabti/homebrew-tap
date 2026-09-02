cask "silt" do
  version "1.2"
  sha256 "c1362b2041188e74ae489cc1060479f0b92ea58dfa2a8394d962615cf9d1dd7b"

  url "https://github.com/thabti/silt/releases/download/v1.2/Silt-1.2.dmg"
  name "Silt"
  desc "Safe, fast macOS disk cleaner for developers"
  homepage "https://github.com/thabti/silt"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Silt.app"

  uninstall quit: "com.sabeur.silt"

  zap trash: [
    "~/Library/Caches/com.sabeur.silt",
    "~/Library/Preferences/com.sabeur.silt.plist",
    "~/Library/Saved Application State/com.sabeur.silt.savedState",
  ]

  caveats <<~EOS
    Silt is signed but not notarized yet. On first launch, right-click
    Silt.app and choose Open.
  EOS
end
