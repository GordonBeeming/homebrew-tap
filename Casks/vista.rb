cask "vista" do
  version "0.4"
  sha256 "7606d2fb98df9517f23199852b62dabae589595c0c474cbb3967206e84b59d19"

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
