cask "myterm" do
  version "0.60"
  sha256 "d4616a99f520bf621eccdc8652963d11c18b7eacfe07786e3144673b97e688ab"

  url "https://github.com/GordonBeeming/myterm/releases/download/v#{version}/myterm-#{version}-aarch64.dmg"
  name "MyTerm"
  desc "Native macOS workspaces for terminal and browser tabs"
  homepage "https://github.com/GordonBeeming/myterm"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "myterm.app"

  zap trash: [
    "~/Library/Application Support/myterm",
    "~/Library/Preferences/com.gordonbeeming.myterm.plist",
    "~/Library/WebKit/com.gordonbeeming.myterm",
  ]
end
