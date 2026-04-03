cask "insomnia" do
  version "0.7"
  sha256 "747210638b0e430fa1905755a5bdaec6a384b7ca76f6ea0677e8448c72ef9228"

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
