cask "ide" do
  version "0.8"
  sha256 "85fe47c446a32b05190bb35697f529134a80750b16e9fcdbc4f6133041c567de"

  url "https://github.com/gordonbeeming/ide/releases/download/v#{version.major_minor}/ide-#{version.major_minor}-aarch64.dmg"
  name "ide"
  desc "Lean local IDE"
  homepage "https://github.com/gordonbeeming/ide"

  depends_on macos: :sonoma

  app "ide.app"

  zap trash: [
    "~/Library/Application Support/com.gordonbeeming.ide",
    "~/Library/Caches/com.gordonbeeming.ide",
    "~/Library/Preferences/com.gordonbeeming.ide.plist",
  ]
end
