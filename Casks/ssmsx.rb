cask "ssmsx" do
  version "0.3-beta.1"
  sha256 "11d127de672f7ab6c82b0f59f66e001d0c31f264e830f1e7eecb1e6b127b85f4"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.3-beta.1/ssmsx-0.3-beta.1-aarch64.dmg"
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
