cask "codex-bar" do
  version "0.5"
  sha256 "8bc989bbd02c6eb7da14ac5b6a6f3fd9278190edde273b71968d99e6917c6f59"

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
