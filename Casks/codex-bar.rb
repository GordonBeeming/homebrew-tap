cask "codex-bar" do
  version "0.9"
  sha256 "444c58da417102b23f685686a15e83dc85b921037f7d817a5d14c8bff119933e"

  url "https://github.com/gordonbeeming/codex-bar/releases/download/v#{version}/CodexBar-#{version}.dmg"
  name "CodexBar"
  desc "Codex usage limits in the macOS menu bar"
  homepage "https://github.com/gordonbeeming/codex-bar"

  depends_on macos: :sequoia
  depends_on arch: :arm64
  app "CodexBar.app"

  zap trash: [
    "~/Library/Preferences/com.gordonbeeming.CodexBar.plist",
  ]
end
