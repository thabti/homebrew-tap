cask "silt" do
  version "1.0"
  sha256 "5f0bfdcefcd8b92d90f57a0d5d3d50586966d9f91c79c434ced6449a1e2f3840"

  url "https://github.com/thabti/silt/releases/download/v1.0/Silt-1.0.dmg"
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
