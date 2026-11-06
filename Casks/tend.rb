cask "tend" do
  version "1.9.0"
  sha256 "c59213b099b1f39f0371fc6ff74fff0a0f682f48434805ac9558d95def051846"

  url "https://tendmac.app/downloads/Tend-#{version}.dmg"
  name "Tend"
  desc "System monitor for performance, energy, battery care and thermals"
  homepage "https://tendmac.app/"

  livecheck do
    url "https://tendmac.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tend.app"

  uninstall quit: "app.tendmac.tend"

  zap trash: [
    "~/Library/Application Support/Tend",
    "~/Library/Caches/app.tendmac.tend",
    "~/Library/HTTPStorages/app.tendmac.tend",
    "~/Library/HTTPStorages/app.tendmac.tend.binarycookies",
    "~/Library/Preferences/app.tendmac.tend.plist",
    "~/Library/Saved Application State/app.tendmac.tend.savedState",
  ]
end
