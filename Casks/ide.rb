cask "ide" do
  version "0.15"
  sha256 "728d19cc3abdbc496dd1a2055ab3029b882278c817d2b22caaf843d2a82d3739"

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
