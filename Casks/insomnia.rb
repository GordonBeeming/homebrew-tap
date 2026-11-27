cask "insomnia" do
  version "0.11"
  sha256 "07055f58d256eb0a1957703f921de08f66ddfcc2368ebfba4d3417b4fa913fbb"

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
