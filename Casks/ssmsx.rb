cask "ssmsx" do
  version "0.1-beta.2"
  sha256 "b30209c87f0307d35a89fe835f386927c0145ac69203f89bad79762d71055a03"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.2/ssmsx-0.1-beta.2-aarch64.dmg"
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
