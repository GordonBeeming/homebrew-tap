cask "bar-ui" do
  version "0.10"
  sha256 "e44332cb47a090c0be92079be596865318a5cb7ceecb7e68935251f3ec2d370a"

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
