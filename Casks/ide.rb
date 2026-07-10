cask "ide" do
  version "0.6"
  sha256 "466ee98bc4771579c9fd82380c33a81a147096c010459b2e58427e5c9998be33"

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
