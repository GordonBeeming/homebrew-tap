cask "codex-bar" do
  version "0.7"
  sha256 "305c6955e997686c6aaf8c87b24abacc868d7611d7b43fd70400d2f5bb75d45c"

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
