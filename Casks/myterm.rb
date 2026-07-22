cask "myterm" do
  version "0.5"
  sha256 "d04686bd5a748cdd916de898bdbaee60d30e8575f7819c17a60d4f63450671e6"

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
