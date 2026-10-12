cask "claude-bar" do
  version "0.8"
  sha256 "99e0107c9b18f9dd79772fb7eeaab70a7f1ebf5baf28e642358f3600aa98a66e"

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
