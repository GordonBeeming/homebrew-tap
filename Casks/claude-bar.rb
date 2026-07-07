cask "claude-bar" do
  version "0.2"
  sha256 "624ded1edf430d30b86f4ba0f27e8f57192e62bf480aa326d9092f518866bfaf"

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
