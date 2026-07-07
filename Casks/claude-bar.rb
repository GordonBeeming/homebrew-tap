cask "claude-bar" do
  version "0.1"
  sha256 "37fe23e46e9f84615a2e33667f320532ec91ec3a41cf6b8f00883378c89f7f5a"

  url "https://github.com/gordonbeeming/claude-bar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Claude usage limits in the macOS menu bar"
  homepage "https://github.com/gordonbeeming/claude-bar"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64
  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Preferences/com.gordonbeeming.ClaudeBar.plist",
  ]
end
