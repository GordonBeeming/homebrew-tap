cask "insomnia" do
  version "0.10"
  sha256 "6995e3654e557dd43d95593c77bc39d07daee29def00619f1bfbd87fd8f8fb18"

  url "https://github.com/gordonbeeming/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  name "Insomnia"
  desc "Caffeinate utility — the tool that never sleeps"
  homepage "https://github.com/gordonbeeming/insomnia"

  depends_on macos: :sonoma

  app "Insomnia.app"
  binary "#{appdir}/Insomnia.app/Contents/MacOS/insomnia-cli", target: "insomnia"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Preferences/com.gordonbeeming.insomnia.plist",
  ]
end
