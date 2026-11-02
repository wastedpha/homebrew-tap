cask "tend" do
  version "1.8.0"
  sha256 "ac9394aa8466c7f8719cc985543593ca56a1fc9b3e6f2daa940f8acdee0f75a5"

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
