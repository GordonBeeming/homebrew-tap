cask "ssmsx" do
  version "0.1-beta.3"
  sha256 "aa77bff09e35ee9513e434b67ea407c4a7e08c435552de9ba7325bed6c1086e1"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.3/ssmsx-0.1-beta.3-aarch64.dmg"
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
