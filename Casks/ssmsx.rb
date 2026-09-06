cask "ssmsx" do
  version "0.5-beta.1"
  sha256 "1a0da053aa02ce25297c58f11369ae22b0aef5e6107d0bb82ed04be640810831"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.5-beta.1/ssmsx-0.5-beta.1-aarch64.dmg"
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
