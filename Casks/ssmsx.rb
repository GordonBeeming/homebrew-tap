cask "ssmsx" do
  version "0.2-beta.3"
  sha256 "5b4e8a47695005014274ee27f04fd72bec95f50690a30b70900fc8605057e1e2"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.2-beta.3/ssmsx-0.2-beta.3-aarch64.dmg"
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
