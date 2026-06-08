cask "ide" do
  version "0.1"
  sha256 "7a88701ebed3338c36f3c77f3d784ec66f88f126d2711cad95bab3434c837b4a"

  url "https://github.com/gordonbeeming/ide/releases/download/v#{version.major_minor}/ide-#{version.major_minor}-aarch64.dmg"
  name "ide"
  desc "Lean local IDE"
  homepage "https://github.com/gordonbeeming/ide"

  depends_on macos: ">= :sonoma"

  app "ide.app"

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.ide",
    "~/Library/Caches/com.gordonbeeming.ide",
    "~/Library/Preferences/com.gordonbeeming.ide.plist",
  ]
end
