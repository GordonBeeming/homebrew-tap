cask "grok-bar" do
  version "0.1"
  sha256 "129ef07e0dd2f571d81b451365b9033d7c57eb2c5f2cdc315c95e6e89fdfee40"

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
