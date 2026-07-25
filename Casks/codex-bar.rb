cask "codex-bar" do
  version "0.6"
  sha256 "39ee128e54cdd179cab44856863ccc395bebb9fd4b011aa0c0ca7436719cd474"

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
