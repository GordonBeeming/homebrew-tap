cask "myterm" do
  version "0.29"
  sha256 "777cd4124630b930150932c0c45d2a4d0b43d500469bb293b3ff9c8e52fc478d"

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
