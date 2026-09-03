cask "silt" do
  version "1.6"
  sha256 "e2f64063d66b679c0ffd9cecec24a4fc39cdc3fa92082c70d85fca3932e86938"

  url "https://github.com/thabti/silt/releases/download/v1.6/Silt-1.6.dmg"
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
