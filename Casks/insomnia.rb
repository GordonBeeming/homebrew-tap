cask "insomnia" do
  version "0.8"
  sha256 "ce71c0923eeb0f645f65f095e93b24f2ddaf8ca89f7f991e4cf5262d8a8a7c3f"

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
