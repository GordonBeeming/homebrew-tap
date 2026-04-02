cask "insomnia" do
  version "0.1.0"
  sha256 "3b304f6845b294e0db11dc6f7f7dc80f8394c35b837ad83a01c6f224b1c766d4"

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
