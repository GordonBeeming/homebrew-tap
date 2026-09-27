cask "myterm" do
  version "0.39"
  sha256 "b502ce506ee58b2547900b5f485a38c90ed38a04f66a2d78356f47db0f35c7cb"

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
