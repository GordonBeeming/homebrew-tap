cask "vista" do
  version "0.3"
  sha256 "ec4566105673d1d9d67f2d962b78cbde2ab8b182f484d079aa44e9d6044d8634"

  url "https://github.com/gordonbeeming/vista/releases/download/v#{version}/Vista-#{version}.dmg"
  name "Vista"
  desc "Search your screenshots by text, name or date — OCR-powered"
  homepage "https://github.com/gordonbeeming/vista"

  depends_on macos: ">= :sonoma"

  app "Vista.app"

  zap trash: [
    "~/Library/Application Support/Vista",
    "~/Library/Caches/com.gordonbeeming.vista",
    "~/Library/Preferences/com.gordonbeeming.vista.plist",
  ]
end
