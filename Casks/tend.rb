cask "tend" do
  version "1.7.1"
  sha256 "ac0b275f685996c2e2237ee1b0d409c4c12d7e765519c64f1ce6998064c623e9"

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
