cask "pullup" do
  version "0.1"
  sha256 "dee7de358c925a2db1a2b8f4379cb6a1ee502f049f25f3b145e0ee5e7b58001d"

  url "https://github.com/gordonbeeming/pullup/releases/download/v#{version.major_minor}/pullup-#{version.major_minor}-aarch64.dmg"
  name "PullUp"
  desc "Local AI-assisted pull request reviewer"
  homepage "https://github.com/gordonbeeming/pullup"

  depends_on macos: :sonoma

  app "PullUp.app"

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.pullup",
    "~/Library/Caches/com.gordonbeeming.pullup",
    "~/Library/Preferences/com.gordonbeeming.pullup.plist",
  ]
end
