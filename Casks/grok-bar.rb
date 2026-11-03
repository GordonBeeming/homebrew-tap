cask "grok-bar" do
  version "0.2"
  sha256 "590697ffd2c96f14b22d694bb2826df5f68ba0449d08dc0c04de4b8af2b9aa05"

  url "https://github.com/gordonbeeming/grok-bar/releases/download/v#{version}/GrokBar-#{version}.dmg"
  name "GrokBar"
  desc "Grok usage limits in the macOS menu bar"
  homepage "https://github.com/gordonbeeming/grok-bar"

  depends_on macos: :sequoia
  depends_on arch: :arm64
  app "GrokBar.app"

  zap trash: [
    "~/Library/Preferences/com.gordonbeeming.GrokBar.plist",
  ]
end
