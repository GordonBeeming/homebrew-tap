cask "ssmsx" do
  version "0.6-beta.1"
  sha256 "7304fb51a159b1e83273bae8b091ce849d3a48d825389f8079aa509795b4bc52"

  url "https://github.com/gordonbeeming/ssmsx/releases/download/v0.6-beta.1/ssmsx-0.6-beta.1-aarch64.dmg"
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
