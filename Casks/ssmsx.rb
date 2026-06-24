cask "ssmsx" do
  version "0.1-beta.1"
  sha256 "5756046640523c60307f491c43de574e197040121c4e59f2faa1ca4e765c24f3"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.1-beta.1/ssmsx-0.1-beta.1-aarch64.dmg"
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