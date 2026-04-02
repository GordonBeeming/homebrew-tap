cask "insomnia" do
  version "0.4"
  sha256 "c1112c14b5083434a074b30eadedac83fcea4da92f82484daa1b9dd996150dae"

  url "https://github.com/gordonbeeming/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  name "Insomnia"
  desc "Caffeinate utility — the tool that never sleeps"
  homepage "https://github.com/gordonbeeming/insomnia"

  depends_on macos: ">= :sonoma"

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Preferences/com.gordonbeeming.insomnia.plist",
  ]
end
