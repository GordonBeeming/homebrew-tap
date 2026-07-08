cask "ide" do
  version "0.4"
  sha256 "3f84b4584397bdf04fbc6246ace5d14a69006ce9dc24595bbfbb0cfc185923ee"

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
