cask "ssmsx" do
  version "0.1-beta.5"
  sha256 "132b5e26b75f935168027cefd7f080ba5d35575cc3e04b7b17a46bfcab270f39"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.5/ssmsx-0.1-beta.5-aarch64.dmg"
  name "SSMSx"
  desc "Fast cross-platform SQL Server Management Studio replacement"
  homepage "https://github.com/gordonbeeming/ssmsx"

  depends_on macos: :sonoma

  app "SSMSx.app"

  zap trash: [
    "~/Library/Application Support/com.ssmsx.app",
    "~/Library/Caches/com.ssmsx.app",
    "~/Library/Preferences/com.ssmsx.app.plist",
  ]
end
