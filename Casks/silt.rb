cask "silt" do
  version "1.1"
  sha256 "79692943aad0e30be633069d7cccbb09cc327b7459781b6b05e649d792a80e7c"

  url "https://github.com/thabti/silt/releases/download/v1.1/Silt-1.1.dmg"
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
