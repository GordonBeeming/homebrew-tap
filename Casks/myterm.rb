cask "myterm" do
  version "0.46"
  sha256 "cbe1cb3a3b9827f59413643814671045043094cd1e8f63daa0d3a046ef0db8a4"

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
