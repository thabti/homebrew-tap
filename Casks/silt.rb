cask "silt" do
  version "1.4"
  sha256 "5f95922ee708887b971f2868e72c211b5712b89b557b9e8ff9723f957ab9f683"

  url "https://github.com/thabti/silt/releases/download/v1.4/Silt-1.4.dmg"
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
