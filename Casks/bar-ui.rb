cask "bar-ui" do
  version "0.1"
  sha256 "ea6a3aae0d414de0af0bc11ea554dae0934e4e0e93778ec45c8b0efa19225be9"

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
