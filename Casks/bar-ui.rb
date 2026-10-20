cask "bar-ui" do
  version "0.8"
  sha256 "dc3cb78511847d631cd02330ed68a81d09a5f9b1dcb4dd0e079b36abf034a8d0"

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
