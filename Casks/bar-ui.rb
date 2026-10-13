cask "bar-ui" do
  version "0.5"
  sha256 "d92fbd89409fe0f3ccfa46837098ab7ff01cebd2302e84dcf7a98a10ac3202e6"

  url "https://github.com/gordonbeeming/bar-ui/releases/download/v#{version}/BarUI-#{version}.dmg"
  name "Bar UI"
  desc "Dashboard for ClaudeBar and CodexBar usage telemetry"
  homepage "https://github.com/gordonbeeming/bar-ui"

  depends_on macos: :tahoe
  depends_on arch: :arm64
  app "BarUI.app"

  uninstall quit: [
    "com.gordonbeeming.BarUI",
    "com.gordonbeeming.BarUI.Helper",
  ]

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.BarUI",
    "~/Library/Caches/com.gordonbeeming.BarUI",
    "~/Library/Preferences/com.gordonbeeming.BarUI.plist",
    "~/Library/Preferences/com.gordonbeeming.BarUI.Helper.plist",
  ]
end
