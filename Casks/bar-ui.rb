cask "bar-ui" do
  version "0.9"
  sha256 "190efa542ab8fa045dbe3aff356b6b779a8928ce3c24bb54bbf8c70ee883398a"

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
