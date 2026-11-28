cask "myterm" do
  version "0.74"
  sha256 "f5c8a6c1ab952e30cc5006d3fdfef76f868e909aced59eca199d25c42e2e1892"

  url "https://github.com/GordonBeeming/myterm/releases/download/v#{version}/myterm-#{version}-aarch64.dmg"
  name "MyTerm"
  desc "Native macOS workspaces for terminal and browser tabs"
  homepage "https://github.com/GordonBeeming/myterm"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "myterm.app"

  caveats do
    <<~EOS
      Uninstalling the app keeps your MyTerm configuration and local server data.
    EOS
  end
end
