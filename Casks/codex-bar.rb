cask "codex-bar" do
  version "0.10"
  sha256 "9e528579ca0bf240799f4694973fd177fa94e2def74959c9436768b6d11233ae"

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
