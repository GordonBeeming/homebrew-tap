cask "claude-bar" do
  version "0.11"
  sha256 "4c3b36283d6f69b2f5abe3d9adf36a40cf4e85e3b184f10efa0372d4a4c80520"

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
