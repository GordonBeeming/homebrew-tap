cask "claude-bar" do
  version "0.3"
  sha256 "9c2c1146d6c2a220286fc3e2b696e1b3585a4666d88b2491e51e73a8eccfe1c0"

  url "https://github.com/gordonbeeming/claude-bar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Claude usage limits in the macOS menu bar"
  homepage "https://github.com/gordonbeeming/claude-bar"

  depends_on macos: :sequoia
  depends_on arch: :arm64
  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Preferences/com.gordonbeeming.ClaudeBar.plist",
  ]
end
