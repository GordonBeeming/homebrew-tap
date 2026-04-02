cask "insomnia" do
  version "0.5"
  sha256 "e7b7b1ae834fc91cee47e350f475b7d39d5193e58e0c37b4847bed35d6e5a978"

  url "https://github.com/gordonbeeming/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  name "Insomnia"
  desc "Caffeinate utility — the tool that never sleeps"
  homepage "https://github.com/gordonbeeming/insomnia"

  depends_on macos: ">= :sonoma"

  app "Insomnia.app"
  binary "#{appdir}/Insomnia.app/Contents/MacOS/insomnia-cli", target: "insomnia"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Preferences/com.gordonbeeming.insomnia.plist",
  ]
end
