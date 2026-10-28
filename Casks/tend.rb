cask "tend" do
  version "1.7.0"
  sha256 "6c77643e9457294b537acb59e87677fffb5cceb9c4cc20de0f05126512878490"

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
  depends_on macos: :sequoia

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
