cask "vista" do
  version "0.10"
  sha256 "fd68b42de64517030dcb58d43a938bb8ba150eae84dabdf11fae0b5a6988a24a"

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
